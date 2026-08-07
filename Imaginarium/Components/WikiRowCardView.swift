import SwiftUI

/// Composant représentant une ligne/carte individuelle pour un Wiki dans la liste.
struct WikiRowCardView: View {
    let wiki: Wiki
    
    var body: some View {
        HStack(spacing: 16) {
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
            
            VStack(alignment: .leading, spacing: 6) {
                Text(wiki.title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Text(wiki.description)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(2)
            }
            .frame(maxHeight: .infinity, alignment: .center)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .font(.body.weight(.semibold))
        }
        .padding(14)
        .background(
            RoundedRectangle(cornerRadius: 35)
                .fill(Color.white.opacity(0.92))
        )
        .shadow(color: Color.black.opacity(0.18), radius: 8, x: 0, y: 4)
    }
}
