//
//  MapView.swift
//  Imaginarium
//
//  Created by apprenant102 on 30/07/2026.
//

import SwiftUI
import UIKit
import MapKit

struct MapView: View {
    
    // Recuperattion des données du WikiViewModel
    
    @Environment(SharedWikiViewModel.self) var viewModel
    @State private var searchText: String = ""
    var selectedType = "Tous"
    var body: some View {
        NavigationStack {
            ZStack {
                Map(position: .constant(.automatic)) {
                    ForEach(viewModel.wikis) { item in
                        if selectedType == "Tous" {
                            Annotation(item.title, coordinate: item.location.coordinate, anchor: .center) {
                                Button {
                                    //                                selectedCard = item
                                    //                                isPresented.toggle()
                                    
                                } label : {
                                    MapAnnotationView(wiki: item)
                                }
                            }
                        }
                    }
//                    VStack {
//                        HStack {
//                            Spacer()
//                            Button(action: {
//                                // Action du menu/filtre
//                            }) {
//                                Image(systemName: "line.3.horizontal.decrease")
//                                    .font(.title2)
//                                    .foregroundColor(.white)
//                            }
//                        }
//                        .padding(.bottom, 8)
//                        .padding(.horizontal)
//                        
//                        SearchBarView(text: $searchText, placeholder: "Search")
//                            .padding(.horizontal)
//                        Spacer()
//                    }
                    
                }
            }
        }
    }
}
#Preview {
    MapView()
}
