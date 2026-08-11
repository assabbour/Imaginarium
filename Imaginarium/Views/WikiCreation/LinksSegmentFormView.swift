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
        
        ZStack {
            BackgroundGradient()
                .ignoresSafeArea()
            
            Form {
                Section("Rechercher un wiki") {
                    SearchBarView(text: $searchText, placeholder: "Nom du wiki")
                    
                    ForEach(filteredWikis) { wiki in
                        Button {
                            wikiCreationViewModel.addLink(to: wiki)
                            searchText = ""
                        } label: {
                            Text(wiki.title)
                        }
                    }
                }
                
                Section("Liens ajoutés") {
                    ForEach(viewModel.wiki.linksSegment?.links ?? []) { link in
                        Text(link.linkedTitle)
                    }
                    .onDelete { indexSet in
                        viewModel.wiki.linksSegment?.links.remove(atOffsets: indexSet)
                    }
                }
            }
            .scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    LinksSegmentFormView()
        .environment(WikiCreationViewModel())
        .environment(SharedWikiViewModel())
}
