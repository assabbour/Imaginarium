//
//  GallerySegmentFormView.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 31/07/2026.
//

import SwiftUI

struct GallerySegmentFormView: View {
    
    @Environment(WikiCreationViewModel.self) var wikiCreationViewModel
    
    @State private var newImageURL: String = ""
    
    var body: some View {
        @Bindable var viewModel = wikiCreationViewModel
        
        ZStack {
            
            Form {
                Section(header:Text("Nouvelle image").foregroundStyle(.white)) {
                    TextField("URL de l'image", text: $newImageURL)
                    
                    Button("Ajouter") {
                        wikiCreationViewModel.addGalleryImage(urlText: newImageURL)
                        newImageURL = ""
                    }
                    .disabled(newImageURL.trimmingCharacters(in: .whitespaces).isEmpty)
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                    .padding(12)
                    .background(.accentExtraLight)
                    .cornerRadius(24)
                    .frame(maxWidth: .infinity)
                }
                
                Section(header:Text("Images ajoutées").foregroundStyle(.white)) {
                    ForEach(viewModel.wiki.gallerySegment?.gallery ?? []) { item in
                        HStack {
                            AsyncImage(url: URL(string: item.image)) { image in
                                image.resizable().scaledToFill()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 44, height: 44)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                            
                            Text(item.image)
                                .font(.caption)
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                        }
                    }
                    .onDelete { indexSet in
                        viewModel.wiki.gallerySegment?.gallery.remove(atOffsets: indexSet)
                    }
                }
            }
            .scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    GallerySegmentFormView()
        .environment(WikiCreationViewModel())
}
