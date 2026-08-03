import SwiftUI

/// Vue principale de l'onglet Wiki affichant la liste filtrable des fiches.
struct WikiView: View {
    
    // MARK: - États
    
    /// Texte saisi dans la barre de recherche.
    @State private var searchText: String = ""
    
    // MARK: - Propriétés Calculées
    
    /// Liste des wikis filtrés dynamiquement selon le texte de recherche.
    /// La recherche s'effectue sur le titre, le sous-titre et les tags.
    var filteredWikis: [Wiki] {
        if searchText.isEmpty {
            return MockData.wikis
        } else {
            return MockData.wikis.filter { wiki in
                wiki.title.localizedCaseInsensitiveContains(searchText) ||
                wiki.subtitle.localizedCaseInsensitiveContains(searchText) ||
                wiki.tags.contains(where: { $0.localizedCaseInsensitiveContains(searchText) })
            }
        }
    }
    
    // MARK: - Vue Principale
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Fond dégradé personnalisé (issu du dossier Components)
                BackgroundGradient()
                    .ignoresSafeArea()
                
                VStack(spacing: 16) {
                    
                    // MARK: En-tête (Header)
                    HStack {
                        Text("Wiki Name")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        // Bouton d'action ou de filtre du header
                        Button(action: {
                            // Action du menu/filtre
                        }) {
                            Image(systemName: "line.3.horizontal.decrease")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                    
                    // MARK: Barre de recherche
                    // Appel du composant réutilisable créé dans Components/SearchBarView.swift
                    SearchBarView(text: $searchText, placeholder: "Search")
                        .padding(.horizontal)
                    
                    // MARK: Liste des cartes Wiki
                    ScrollView(showsIndicators: false) {
                        LazyVStack(spacing: 16) {
                            ForEach(filteredWikis) { wiki in
                                // Carte d'un élément Wiki
                                WikiRowCardView(wiki: wiki)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 80) // Espace pour ne pas être masqué par la TabBar
                    }
                }
            }
        }
    }
}

// MARK: - Composant Carte (Row) pour le Wiki

/// Composant interne représentant chaque ligne de carte Wiki (style gris avec miniature).
struct WikiRowCardView: View {
    let wiki: Wiki
    
    var body: some View {
        HStack(spacing: 16) {
            
            // Image circulaire du Wiki (URL Asynchrone)
            AsyncImage(url: wiki.imageName) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
                    .tint(.white)
            }
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            
            // Informations texte (Titre + Description / Sous-titre)
            VStack(alignment: .leading, spacing: 4) {
                Text(wiki.title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Text(wiki.description)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(2) // Limite à 2 lignes comme sur la maquette
            }
            
            Spacer()
            
            // Flèche de navigation à droite
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .font(.body.weight(.semibold))
        }
        .padding(12)
        .background(
            RoundedRectangle(cornerRadius: 35) // Coins très arrondis comme le design Figma
                .fill(Color.white.opacity(0.85))
        )
    }
}

// MARK: - Aperçu Xcode

#Preview {
    WikiView()
}
