//
//  LinksSegmentFormView.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 03/08/2026.
//

import SwiftUI

struct LinksSegmentFormView: View {
    
    @Environment(WikiCreationViewModel.self) var wikiCreationViewModel
    @Environment(SharedWikiViewModel.self) var sharedViewModel
    
    @State private var searchText: String = ""
    
    var filteredWikis: [Wiki] {
        guard !searchText.isEmpty else { return [] }
        let existingLinks = wikiCreationViewModel.wiki.linksSegment?.links ?? []
        return sharedViewModel.wikis.filter { wiki in
            wiki.title.localizedCaseInsensitiveContains(searchText) &&
            !existingLinks.contains(where: { $0.linkedWikiID == wiki.id })
        }
    }
    
    var body: some View {
        @Bindable var viewModel = wikiCreationViewModel
        
        VStack {
            
            Text("Autres liens")
                .font(.title.bold())
                .foregroundStyle(.white)
            RowDividerTopic()
            
            Group {
                Text("Rechercher un wiki")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                SearchBarView(text: $searchText, placeholder: "Nom du wiki")
                
                ForEach(filteredWikis) { wiki in
                    Button {
                        wikiCreationViewModel.addLink(to: wiki)
                        searchText = ""
                        //Nav vers le wiki
                    } label: {
                        Text(wiki.title)
                    }
                }
                
                Group {
                    Text("Wiki(s) selectionné(s)")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(viewModel.wiki.linksSegment?.links ?? []) { link in
                        Text(link.linkedTitle)
                    }
                    .onDelete { indexSet in
                        viewModel.wiki.linksSegment?.links.remove(atOffsets: indexSet)
                    }
                }
            }
//            .padding()
        }
        .padding()
        .background(Color.black.opacity(0.15))
        .cornerRadius(8)
    }
}

#Preview {
    LinksSegmentFormView()
        .environment(WikiCreationViewModel())
        .environment(SharedWikiViewModel())
}
