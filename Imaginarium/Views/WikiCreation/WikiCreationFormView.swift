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
                        TextField("Titre", text: $viewModel.wiki.title)
                        TextField("Sous-titre", text: $viewModel.wiki.subtitle)
                        TextField("Description", text: $viewModel.wiki.description, axis: .vertical)
                            .lineLimit(3...6)
                        TextField("URL de l'image", text: $viewModel.imgTextToURL)
                        
                        Picker("Catégorie", selection: $viewModel.wiki.category) {
                            ForEach(Category.allCases, id: \.self) { category in
                                Text(String(describing: category)).tag(category)
                            }
                        }
                        
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
                        
                        TextField("Latitude", text: $viewModel.latitudeText)
                            .keyboardType(.decimalPad)
                        TextField("Longitude", text: $viewModel.longitudeText)
                            .keyboardType(.decimalPad)
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
