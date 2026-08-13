//
//  WikiCreationFormView.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 07/08/2026.
//

import SwiftUI
import UIKit

struct WikiCreationFormView: View {
    
    @Environment(SharedWikiViewModel.self) var sharedViewModel
    
    @State var wikiCreationViewModel = WikiCreationViewModel()
    @State private var newTag: String = ""
    @State private var showSuccessAlert = false
    
    var body: some View {
        @Bindable var viewModel = wikiCreationViewModel // permet un binding avec @environment qui ne renvoit pas de projected value de type binding obligatoire dans un textfield
        
        ZStack {
            BackgroundGradient() /*applique la couleur sur toute la zstack et lui donne une taille*/
            .ignoresSafeArea() /* Applique le safeArea UNIQUEMENT sur le background et pas a toute la view donc cool*/
            ScrollView {
                
                VStack {
                    
                    HStack {
                        ComponentTitle(title: "Creation du Wiki")
                            .padding()
                        Spacer()
                    }
                    
                    VStack {
                        
                        Text("Introduction")
                            .foregroundStyle(.white)
                            .font(.title.bold())
                        +
                        Text("*")
                            .foregroundStyle(.red)
                            .font(.title.bold())
                        RowDividerTopic()
                    Group {
                        
                            TextField("URL de l'image", text: $viewModel.imgTextToURL)
                            TextField("Titre", text: $viewModel.wiki.title, axis: .vertical)
                            TextField("Sous-titre", text: $viewModel.wiki.subtitle, axis: .vertical)
                            TextField("Description", text: $viewModel.wiki.description, axis: .vertical)
                            TextField("Latitude", text: $viewModel.latitudeText)
//                            .keyboardType(.decimalPad)
                            TextField("Longitude", text: $viewModel.longitudeText)
//                            .keyboardType(.decimalPad)
                        }
                        .padding(.horizontal)
                        .background()
                        .cornerRadius(4)
                        
                        HStack {
                            TextField("   Ajouter un tag", text: $newTag)
                                .background()
                                .cornerRadius(4)
                            
                            Button("Ajouter") {
                                let trimmed = newTag.trimmingCharacters(in: .whitespaces)
                                guard !trimmed.isEmpty else { return }
                                viewModel.wiki.tags.append(trimmed)
                                newTag = ""
                            }
                            .padding(.horizontal)
                            .background(.accentDark)
                            .foregroundStyle(.white)
                            .cornerRadius(8)
                        }
                        if !viewModel.wiki.tags.isEmpty {
                            Text(viewModel.wiki.tags.joined(separator: ", "))
                                .font(.caption)
                        }
                        
                        Picker(selection: $viewModel.wiki.category) {
                            ForEach(Category.allCases, id: \.self) { category in
                                Text(String(describing: category)).tag(category)
                                    .foregroundStyle(.white)
                            }
                        } label: {
                            Text("Catégorie")
                        }
                        .tint(.black)
                        .background(.accentLight)
                        .cornerRadius(8)
                        
                        if !viewModel.errorMessages.isEmpty {
                            VStack(alignment: .leading, spacing: 4) {
                                ForEach(viewModel.errorMessages, id: \.self) { message in
                                    Text(message)
                                }
                            }
                            .padding(.horizontal)
                        }

                }
                .padding()
                .background(Color.black.opacity(0.15))
                .cornerRadius(8)

                        HomeSegmentFormView()
                            .cornerRadius(8)
                    
                        DescriptionSegmentFormView()
                            .cornerRadius(8)
                    
                        GallerySegmentFormView()
                            .cornerRadius(8)

                        LinksSegmentFormView()
                            .cornerRadius(8)
                    
                    HStack{
                        Text("*")
                            .foregroundStyle(.red)
                        +
                        Text("Obligatoire")
                            .foregroundStyle(.white)
                        Spacer()
                    }
                    
                    Button("Créer le wiki") {
                        let success = wikiCreationViewModel.createWiki(in: sharedViewModel)
                    }
                    .foregroundStyle(.white)
                    .font(.title2.bold())
                    .padding(8)
                    .background(.accentDark)
                    .cornerRadius(16)
                    .padding()
                }
            }
        }
        .alert("Wiki créé avec succès !", isPresented: $showSuccessAlert) {
            Button("Retour a l'Imagipedium") {
                //navigation vers catalogue
            }
        }
        .environment(wikiCreationViewModel)
    }
}
#Preview {
    WikiCreationFormView()
        .environment(SharedWikiViewModel())
}
