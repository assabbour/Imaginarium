import SwiftUI

struct WikiView: View {
    
    @Environment(SharedWikiViewModel.self) var viewModel
    
    /// Texte saisi dans la barre de recherche.
    @State private var searchText: String = ""
    
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
                    
                    HStack {
                        Text("Imaginarium")
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
            
                    SearchBarView(text: $searchText, placeholder: "Search")
                        .padding(.horizontal)
                    
                    ScrollView(showsIndicators: false) {
                        LazyVStack(spacing: 18) {
                            ForEach(viewModel.filterWikis(searchText)) { wiki in
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

#Preview {
    WikiView()
        .environment(SharedWikiViewModel())
}
