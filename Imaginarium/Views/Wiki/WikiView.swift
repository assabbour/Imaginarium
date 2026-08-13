import SwiftUI

struct WikiView: View {
    // MARK: - Recuperattion des données du WikiViewModel
    
    @Environment(SharedWikiViewModel.self) var sharedViewModel
    
    /// Texte saisi dans la barre de recherche.
    @State private var searchText: String = ""
    @State var categoryType: Category = .all
    
    /// Le chemin de navigation (NavigationPath) pour gérer la pile d'écrans.
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        // On lie le NavigationStack au chemin de navigation
        NavigationStack(path: $navigationPath) {
            ZStack {
                // Fond dégradé personnalisé global
                BackgroundGradient()
                    .ignoresSafeArea()
                
                VStack(spacing: 16) {
                    SharedHeaderView(searchText: $searchText, title: "Imaginopedia")
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
                    .padding(.horizontal)
                }
            }
            // Déclaration de la destination de navigation liée au type Wiki
            .navigationDestination(for: Wiki.self) { wiki in
                WikiDetailView(wiki: wiki)
            }
        }
    }
}

#Preview {
    WikiView()
        .environment(SharedWikiViewModel())
}
