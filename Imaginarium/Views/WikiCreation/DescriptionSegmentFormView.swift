//
//  DescriptionSegmentFormView.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 03/08/2026.
//

import SwiftUI

struct DescriptionSegmentFormView: View {
    
    @Environment(WikiCreationViewModel.self) var wikiCreationViewModel
    
    @State private var newSectionTitle: String = ""
    @State private var newSectionContent: String = ""
    
    var body: some View {
        @Bindable var viewModel = wikiCreationViewModel
        
        ZStack {
            BackgroundGradient()
                .ignoresSafeArea()
            
            Form {
                Section("Nouvelle section") {
                    TextField("Titre de la section", text: $newSectionTitle)
                    TextField("Contenu", text: $newSectionContent, axis: .vertical)
                        .lineLimit(3...6)
                    
                    Button("Ajouter") {
                        wikiCreationViewModel.addDescriptionSection(title: newSectionTitle, content: newSectionContent)
                        newSectionTitle = ""
                        newSectionContent = ""
                    }
                    .disabled(newSectionTitle.trimmingCharacters(in: .whitespaces).isEmpty ||
                              newSectionContent.trimmingCharacters(in: .whitespaces).isEmpty)
                }
                
                Section("Sections ajoutées") {
                    ForEach(viewModel.wiki.descriptionSegment?.sections ?? []) { section in
                        VStack(alignment: .leading) {
                            Text(section.title).fontWeight(.semibold)
                            Text(section.contents)
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                    .onDelete { indexSet in
                        viewModel.wiki.descriptionSegment?.sections.remove(atOffsets: indexSet)
                    }
                }
            }
            .scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    DescriptionSegmentFormView()
        .environment(WikiCreationViewModel())
}
