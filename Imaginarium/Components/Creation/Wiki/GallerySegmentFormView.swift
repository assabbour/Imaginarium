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
            
        VStack{
            
            Text("Galerie")
                .font(.title2.bold())
                .foregroundStyle(.white)
            RowDividerTopic()
            
            Group {
            Group {
                Text("Nouvelle image")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("URL de l'image", text: $newImageURL)
                    .background(.white)
                    .cornerRadius(4)
                
                Button("Ajouter l'image") {
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
            
            
            Group {
                Text("Images ajoutées")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
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
//        .padding()
        }
        .padding()
        .background(Color.black.opacity(0.15))
        .cornerRadius(8)
        }
    }


#Preview {
    GallerySegmentFormView()
        .environment(WikiCreationViewModel())
}
