import SwiftUI

struct WikiDetailView: View {
    let wiki: Wiki
    
    @State private var viewModel = WikiDetailViewModel()

    var body: some View {
        ZStack {
            BackgroundGradient()
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 24) {
                    
                    // En-tête (Image et Titre du Wiki)
                    VStack(spacing: 12) {
                        AsyncImage(url: wiki.imageName) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView().tint(.white)
                        }
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                        
                        Text(wiki.title)
                            .font(.system(size: 26, weight: .bold))
                            .foregroundColor(.white)
                        
                        Text(wiki.subtitle)
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.7))
                    }
                    .padding(.top, 16)
                    
                    // Barre d'onglets personnalisée (5 onglets)
                    CustomSegmentedBar(tabs: viewModel.tabs, selectedTab: $viewModel.selectedTab)
                        .padding(.horizontal)
                    
                    // Contenu dynamique selon l'onglet sélectionné
                    Group {
                        switch viewModel.selectedTab {
                        case "Home":
                            HomeSegmentView(wiki: wiki)
                        case "Description":
                            DescriptionSegmentView(wiki: wiki)
                        case "Gallery":
                            GallerySegmentView(wiki: wiki)
                        case "Links":
                            LinksSegmentView(wiki: wiki)
                        case "Event":
                            EventSegmentView(wiki: wiki)
                        default:
                            HomeSegmentView(wiki: wiki)
                        }
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 50)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
