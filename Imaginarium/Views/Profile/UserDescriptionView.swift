import SwiftUI

struct UserDescriptionView: View {
    let description: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Description :")
                .font(.headline)
                .foregroundColor(.white)
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.cyan.opacity(0.6))

            Text(description)
                .font(.body)
                .foregroundColor(.white.opacity(0.9))
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding()
        .background(Color.black.opacity(0.2))
        .cornerRadius(12)
    }
}
