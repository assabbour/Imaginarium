import SwiftUI

struct HomeSegmentView: View {
    let wiki: Wiki
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Accueil")
                .font(.headline)
                .foregroundColor(.white)
            
            // Pour remplacer wiki.subtitle
            ForEach(wiki.homeSegment.elements) { element in
                HStack (spacing: 8) {
                    Text(element.elementName)
                    Text(element.description)
                }
            }
//            Text(wiki.subtitle)
//                .foregroundColor(.white.opacity(0.85))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.08)))
    }
}
