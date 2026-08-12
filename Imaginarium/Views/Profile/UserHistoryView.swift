
import SwiftUI
struct UserHistoryView: View {
    let user: User
    let userWikis: [Wiki] 

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 10) {
                AsyncImage(url: user.profilPicture) { image in
                    image.resizable().scaledToFill()
                } placeholder: {
                    Circle().fill(Color.gray)
                }
                .frame(width: 30, height: 30)
                .clipShape(Circle())

                Text("User History")
                    .font(.headline)
                    .foregroundColor(.white)
            }
            ForEach(userWikis) { wiki in
                VStack(alignment: .leading, spacing: 6) {
                    Text("Wiki : \(wiki.title)")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.cyan)

                    Text(wiki.description)
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))
                        .lineLimit(3)
                }
                .padding()
                .background(Color.black.opacity(0.3))
                .cornerRadius(10)
            }
        }
        .padding()
    }
}
