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
        
        VStack {
            
            Text("Description")
                .font(.title2.bold())
                .foregroundStyle(.white)
            RowDividerTopic()
            
            Group {
                
                Text("Nouvelle section")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Group{
                    TextField("Titre de la section", text: $newSectionTitle, axis: .vertical)
                    TextField("Contenu", text: $newSectionContent, axis: .vertical)
                }
                .background()
                .cornerRadius(4)
                
                Text("Sections ajoutées")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
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
            
            
            Button("Ajouter la description") {
                wikiCreationViewModel.addDescriptionSection(title: newSectionTitle, content: newSectionContent)
                newSectionTitle = ""
                newSectionContent = ""
            }
            .disabled(newSectionTitle.trimmingCharacters(in: .whitespaces).isEmpty ||
                      newSectionContent.trimmingCharacters(in: .whitespaces).isEmpty)
            .foregroundStyle(.black)
            .fontWeight(.bold)
            .padding(12)
            .background(.accentExtraLight)
            .cornerRadius(24)
            .frame(maxWidth: .infinity)
        }
//        .padding()
    }
        .padding()
        .background(Color.black.opacity(0.15))
        .cornerRadius(8)
            }
        }

#Preview {
    DescriptionSegmentFormView()
        .environment(WikiCreationViewModel())
}
