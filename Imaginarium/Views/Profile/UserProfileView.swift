import SwiftUI

struct UserProfileView: View {
    let user: User = MockData.alex
    var userWikis: [Wiki] {
        MockData.wikis.filter { $0.creator.id == user.id }
    }
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                UserHeaderView(user: user) {
                    print("Action d'édition cliquée")
                }
                VStack(spacing: 20) {
                    UserDescriptionView(description: user.description)
                    UserHistoryView(user: user, userWikis: userWikis)
                }
                .padding(.horizontal)
            }
        }
        .background(Color("backgroundDarkBlue"))
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    UserProfileView()
}
