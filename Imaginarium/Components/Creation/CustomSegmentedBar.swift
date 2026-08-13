import SwiftUI

/// Composant réutilisable pour la barre d'onglets personnalisée.
struct CustomSegmentedBar: View {
    let tabs: [String]
    @Binding var selectedTab: String
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(tabs, id: \.self) { tab in
                VStack(spacing: 8) {
                    Text(tab)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(selectedTab == tab ? .white : .white.opacity(0.4))
                    
                    // Barre de soulignement pour l'onglet actif
                    Rectangle()
                        .fill(selectedTab == tab ? Color.white : Color.clear)
                        .frame(height: 3)
                }
                .frame(maxWidth: .infinity)
                .contentShape(Rectangle())
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        selectedTab = tab
                    }
                }
            }
        }
        // Ligne de fond fine sous toute la barre
        .overlay(alignment: .bottom) {
            Rectangle()
                .fill(Color.white.opacity(0.15))
                .frame(height: 1)
        }
        .padding(.horizontal, 8)
    }
}
