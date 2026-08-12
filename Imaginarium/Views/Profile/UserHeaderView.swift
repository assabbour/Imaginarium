

import SwiftUI

struct UserHeaderView: View {
    let user: User
    var onEditTapped: () -> Void

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            AsyncImage(url: user.profilPicture) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Color.gray.opacity(0.3)
            }
            .frame(height: 220)
            .clipped()
            LinearGradient(
                colors: [.clear, Color.black.opacity(0.7)],
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(height: 120)
            HStack(alignment: .bottom, spacing: 15) {
                AsyncImage(url: user.profilPicture) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Circle().fill(Color.gray)
                }
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                VStack(alignment: .leading, spacing: 4) {
                    Text("User name : \(user.pseudo)")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Text("Location : \(user.pays.rawValue)")
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.8))
                }
                
                Spacer()
                Button(action: onEditTapped) {
                    HStack(spacing: 5) {
                        Text("Edit")
                        Image(systemName: "pencil")
                    }
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.cyan)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                }
            }
            .padding()
        }
    }
}
