//
//  HomeSegmentFormView.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 30/07/2026.
//

import SwiftUI

struct HomeSegmentFormView: View {
    
    @Environment(WikiCreationViewModel.self) var wikiCreationViewModel
    
    @State private var newElementName: String = ""
    @State private var newElementDescription: String = ""
    
    var body: some View {
        @Bindable var viewModel = wikiCreationViewModel // il faut que la vue soit créée pour que le binding fonctionne d'ou l'importance de le placer DANS le body
        
        VStack {
            
            Text("Home")
                .font(.title.bold())
                .foregroundStyle(.white)
            +
            Text("*")
            .font(.title.bold())
            .foregroundStyle(.red)
//            .padding()
            
            RowDividerTopic()
            
            Group {
                
                Text("Nouvel élément")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Group {
                    TextField("Titre", text: $newElementName)
                    TextField("Description", text: $newElementDescription, axis: .vertical) // permet de choisir l'axe d'expension
                }
                .background()
                
                    Text("Éléments ajoutés")
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(viewModel.wiki.homeSegment.elements) { element in
                        VStack(alignment: .leading) {
                            Text(element.elementName).fontWeight(.semibold)
                            Text(element.description)
                                .font(.caption) //gestion native IOS de la taille de police
                                .foregroundColor(.secondary) // gestion native IOS de la couleur de police
                        }
                    }
                    .onDelete { indexSet in // trouver pour supprimer par swipe, natif IOS
                        viewModel.wiki.homeSegment.elements.remove(atOffsets: indexSet)
                    }
                
                .background()
                .cornerRadius(4)
                
                
                Button("Ajouter l'element") {
                    wikiCreationViewModel.addHomeElement(name: newElementName, description: newElementDescription)
                    newElementName = ""
                    newElementDescription = ""
                }
                .disabled(newElementName.trimmingCharacters(in: .whitespaces).isEmpty ||
                          newElementDescription.trimmingCharacters(in: .whitespaces).isEmpty)
                .foregroundStyle(.black)
                .fontWeight(.bold)
                .padding(12)
                .background(.accentExtraLight)
                .cornerRadius(24)
            }
        }
        .padding()
        .background(Color.black.opacity(0.15))
        .cornerRadius(8)
    }
}

#Preview {
    HomeSegmentFormView()
        .environment(WikiCreationViewModel())
}
