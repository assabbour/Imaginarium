import SwiftUI

struct DescriptionSegmentView: View {
    let wiki: Wiki
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Description")
                .font(.headline)
                .foregroundColor(.white)
            
            // code de remplacement pour recup le bon mockdata
            ForEach(wiki.descriptionSegment?.sections ?? []) { section in
                Text(section.title)
                Text(section.contents)
            }
//            Text(wiki.description)
//                .foregroundColor(.white.opacity(0.85))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.08)))
    }
}
