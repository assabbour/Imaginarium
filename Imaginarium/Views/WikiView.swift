import SwiftUI

/// Vue principale affichant la liste des Wikis avec une barre de recherche et un système de navigation.
struct WikiView: View {
    
    // MARK: - Recuperattion des données du WikiViewModel
    
    @Environment(SharedWikiViewModel.self) var sharedViewModel
    
    // MARK: - États
    
    /// Texte saisi dans la barre de recherche.
    @State private var searchText: String = ""
    @State var categoryType: Category = .all
    
    /// Le chemin de navigation (NavigationPath) pour gérer la pile d'écrans.
    @State private var navigationPath = NavigationPath()
    
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
                        Text("Imaginarium")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)
                        
                        Spacer()
                        CategorySelectionView()
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                    
                    // MARK: - Barre de recherche
                    SearchBarView(text: $searchText, placeholder: "Search")
                        .padding(.horizontal)
                    
                    // MARK: - Liste des cartes Wiki
                    ScrollView(showsIndicators: false) {
                        LazyVStack(spacing: 18) {
                            ForEach(sharedViewModel.filterWikis(searchText, selected: sharedViewModel.selectedCategory)) { wiki in
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
        .environment(SharedWikiViewModel())
}
