import SwiftUI

struct LinksSegmentView: View {
    let wiki: Wiki
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            //ATTENTION: il faudra qu'il soit clickable!!!
            // remplacer pour use le nouveau mockdata
            ForEach(wiki.linksSegment?.links ?? []) { link in
                HStack {
                    AsyncImage(url: link.linkedWikiImage) { image in
                        image.resizable().scaledToFill()
                    } placeholder: {
                        ProgressView().tint(.white)
                    }
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                    
                    Text(link.linkedTitle)
                }
            }
//            
//            Text("Liens Utiles")
//                .font(.headline)
//                .foregroundColor(.white)
//            
//            Text("Informations et liens externes liés au wiki.")
//                .foregroundColor(.white.opacity(0.85))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.08)))
    }
}
