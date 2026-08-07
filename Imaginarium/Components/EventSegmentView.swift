import SwiftUI

struct EventSegmentView: View {
    let wiki: Wiki
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Événements")
                .font(.headline)
                .foregroundColor(.white)
            
            Text("Historique et événements associés.")
                .foregroundColor(.white.opacity(0.85))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.08)))
    }
}
