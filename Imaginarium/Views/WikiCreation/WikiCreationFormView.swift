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
            BackgroundGradient()
                .ignoresSafeArea()
            
                VStack(spacing: 16) {
                    
                    VStack(spacing: 12) {
                        
                        Text("Creation d'un Wiki")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)
                            //alignment du titre a gauche
                        
                        Spacer()
                        
                        Form {
                            Section{
                                HStack {
                                    TextField("URL de l'image", text: $viewModel.imgTextToURL)
                                    VStack{
                                        TextField("Titre", text: $viewModel.wiki.title)
                                        TextField("Sous-titre", text: $viewModel.wiki.subtitle)
                                        TextField("Latitude", text: $viewModel.latitudeText)
                                            .keyboardType(.decimalPad)
                                        TextField("Longitude", text: $viewModel.longitudeText)
                                            .keyboardType(.decimalPad)
                                    }
                                }
                            }
                        }
                        .scrollContentBackground(.hidden) // rend invisble le bg par defaut du form

//                        .clipShape si je n'utilise pas de Form
                    }
                    
                   

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
                    
                    if !viewModel.errorMessages.isEmpty {
                        VStack(alignment: .leading, spacing: 4) {
                            ForEach(viewModel.errorMessages, id: \.self) { message in
                                Text(message)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Picker("Catégorie", selection: $viewModel.wiki.category) {
                        ForEach(Category.allCases, id: \.self) { category in
                            Text(String(describing: category)).tag(category)
                        }
                    }
                    .background(.red)
                        
                    
                        HStack {
                            TextField("Ajouter un tag", text: $newTag)
                            Button("Ajouter") {
                                let trimmed = newTag.trimmingCharacters(in: .whitespaces)
                                guard !trimmed.isEmpty else { return }
                                viewModel.wiki.tags.append(trimmed)
                                newTag = ""
                            }
                        }
                        if !viewModel.wiki.tags.isEmpty {
                            Text(viewModel.wiki.tags.joined(separator: ", "))
                                .font(.caption)
                        }
                    
                    Button("Créer le wiki") {
                        let success = wikiCreationViewModel.createWiki(in: sharedViewModel)
                    }
                    
                    Spacer()
                }
        }
        .environment(wikiCreationViewModel)
    }
}

#Preview {
    WikiCreationFormView()
        .environment(SharedWikiViewModel())
}
