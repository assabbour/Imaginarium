import SwiftUI

struct GallerySegmentView: View {
    let wiki: Wiki
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Galerie Média")
                .font(.headline)
                .foregroundColor(.white)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(wiki.gallerySegment?.gallery ?? [], id: \.self) { imageUrl in
                        AsyncImage(url: URL(string: imageUrl.image)) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView().tint(.white)
                        }
                        .frame(width: 120, height: 120)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
            }
        }
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.08)))
    }
}

