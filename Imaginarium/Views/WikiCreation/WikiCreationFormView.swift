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
    
    var body: some View {
        @Bindable var viewModel = wikiCreationViewModel // peut se remplacer par .OnAppear
        
        ZStack {
            BackgroundGradient() /*applique la couleur sur toute la zstack et lui donne une taille*/
            .ignoresSafeArea() /* Applique le safeArea UNIQUEMENT sur le background et pas a toute la view donc cool*/
            
            VStack(spacing: 0) {
                        
                        VStack(spacing: 0) {
                            
                        Text("Creation d'un Wiki")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.bottom)
//                            .frame(.leading)
                            
                        Form {
                            Section{
                                HStack {
                                    TextField("URL de l'image", text: $viewModel.imgTextToURL)
                                    VStack{
                                        TextField("Titre", text: $viewModel.wiki.title)
                                        TextField("Sous-titre", text: $viewModel.wiki.subtitle)
                                        TextField("Description", text: $viewModel.wiki.description)
                                        TextField("Latitude", text: $viewModel.latitudeText)
//                                            .keyboardType(.decimalPad)
                                        TextField("Longitude", text: $viewModel.longitudeText)
//                                            .keyboardType(.decimalPad)
                                    }
                            }
                        }
                    }
                    .cornerRadius(24)
                    .frame(height: 200)
                    .scrollDisabled(true)
                    .scrollContentBackground(.hidden)  //rend invisble le bg par defaut du form
                    .contentMargins(0)
//.clipShape*/ //si je n'utilise pas de Form
                }
                .padding(.horizontal)
                
                
                CustomSegmentedBar(
                    tabs: viewModel.tabs,
                    selectedTab: $viewModel.selectedTab
                )
                .padding(.horizontal)
                
                Group {
                    switch viewModel.selectedTab {
                    case "Home":
                        HomeSegmentFormView()
                    case "Gallery":
                        GallerySegmentFormView()
                    case "Description":
                        DescriptionSegmentFormView()
                    case "Links":
                        LinksSegmentFormView()
                    default:
                        HomeSegmentFormView()
                    }
                }
                
                HStack {
                    TextField("Ajouter un tag", text: $newTag)
                        .background(.white)
                        .padding(.horizontal)
                    Button("Ajouter") {
                        let trimmed = newTag.trimmingCharacters(in: .whitespaces)
                        guard !trimmed.isEmpty else { return }
                        viewModel.wiki.tags.append(trimmed)
                        newTag = ""
                    }
                    .foregroundStyle(.black)
                    .padding(.horizontal)
                    .padding(8)
                    .background(.accentExtraLight)
                    .cornerRadius(16)
                    
                    
                }
                .foregroundStyle(.white)
                if !viewModel.wiki.tags.isEmpty {
                    Text(viewModel.wiki.tags.joined(separator: ", "))
                        .font(.caption)
                }
                
                Picker(selection: $viewModel.wiki.category) {
                    ForEach(Category.allCases, id: \.self) { category in
                        Text(String(describing: category)).tag(category)
                    }
                } label: {
                    Text("Catégorie")
                        .foregroundStyle(.black)
                }
                .background(.accentExtraLight)
                .cornerRadius(8)
                
                if !viewModel.errorMessages.isEmpty {
                    VStack(alignment: .leading, spacing: 4) {
                        ForEach(viewModel.errorMessages, id: \.self) { message in
                            Text(message)
                        }
                    }
                    .padding(.horizontal)
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
        .environment(wikiCreationViewModel)
    }
}
#Preview {
    WikiCreationFormView()
        .environment(SharedWikiViewModel())
}
