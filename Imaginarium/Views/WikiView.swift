import SwiftUI

/// Vue principale affichant la liste des Wikis avec une barre de recherche et un système de navigation.
struct WikiView: View {
    
    // MARK: - États
    
    /// Texte saisi dans la barre de recherche.
    @State private var searchText: String = ""
    
    /// Le chemin de navigation (NavigationPath) pour gérer la pile d'écrans.
    @State private var navigationPath = NavigationPath()
    
    // MARK: - Propriétés calculées
    
    /// Liste des wikis filtrés dynamiquement selon le texte de recherche (titre, sous-titre ou tags).
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
    
    // MARK: - Corps de la vue
    
    var body: some View {
        // On lie le NavigationStack au chemin de navigation
        NavigationStack(path: $navigationPath) {
            ZStack {
                // Fond dégradé personnalisé global
                BackgroundGradient()
                    .ignoresSafeArea()
                
                VStack(spacing: 16) {
                    
                    // MARK: - En-tête (Header)
                    HStack {
                        Text("Wiki Name")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Button(action: {
                            // Action future pour le menu ou les filtres avancés
                        }) {
                            Image(systemName: "line.3.horizontal.decrease")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                    
                    // MARK: - Barre de recherche
                    SearchBarView(text: $searchText, placeholder: "Search")
                        .padding(.horizontal)
                    
                    // MARK: - Liste des cartes Wiki
                    ScrollView(showsIndicators: false) {
                        LazyVStack(spacing: 18) {
                            ForEach(filteredWikis) { wiki in
                                Button(action: {
                                    // Ajout de l'élément au chemin pour naviguer vers le détail
                                    navigationPath.append(wiki)
                                }) {
                                    // Utilisation du composant de carte extrait
                                    WikiRowCardView(wiki: wiki)
                                }
                                .buttonStyle(PlainButtonStyle()) // Évite l'effet gris/opacité par défaut du bouton
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top, 4)
                        .padding(.bottom, 80)
                    }
                }
            }
            // Déclaration de la destination de navigation liée au type Wiki
            .navigationDestination(for: Wiki.self) { wiki in
                WikiDetailView(wiki: wiki)
            }
        }
    }
}

// Aperçu Xcode
#Preview {
    WikiView()
}
