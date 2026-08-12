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
        
        ZStack {
            BackgroundGradient() /*applique la couleur sur toute la zstack et lui donne une taille*/
                .ignoresSafeArea() /* Applique le safeArea UNIQUEMENT sur le background et pas a toute la view donc cool*/
            
            Form {
                Section("Nouvel élément") {
                    TextField("Nom", text: $newElementName)
                    TextField("Description", text: $newElementDescription, axis: .vertical)
                        .lineLimit(2...4)
                    
                    Button("Ajouter") {
                        wikiCreationViewModel.addHomeElement(name: newElementName, description: newElementDescription)
                        newElementName = ""
                        newElementDescription = ""
                    }
                    .disabled(newElementName.trimmingCharacters(in: .whitespaces).isEmpty ||
                              newElementDescription.trimmingCharacters(in: .whitespaces).isEmpty)
                }
                
                Section("Éléments ajoutés") {
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
                }
            }
            .scrollContentBackground(.hidden) // rend invisble le bg par defaut du form
        }
    }
}

#Preview {
    HomeSegmentFormView()
        .environment(WikiCreationViewModel())
}
