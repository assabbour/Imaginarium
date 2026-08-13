import SwiftUI

/// Ligne réutilisable pour afficher une information avec une icône, un libellé et une valeur.
struct DetailInfoRow: View {
    let icon: String
    let label: String
    let value: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .foregroundColor(.white.opacity(0.9))
                .frame(width: 24)
            
            Text(label)
                .fontWeight(.medium)
                .foregroundColor(.white.opacity(0.8))
            
            Text(":")
                .foregroundColor(.white.opacity(0.5))
            
            Text(value)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Spacer()
        }
    }
}
