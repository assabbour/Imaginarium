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
   
    @Environment(SharedWikiViewModel.self) var viewModel
    
    @State private var searchText: String = ""
    @State var categoryType = Category.any
    @State var isSheetPresented: Bool = false
    @State var passWikiToSheet: Wiki = MockData.wikis[0] // default data, we never see it
    
    var body: some View {
        NavigationStack() {
            ZStack {
                Map(position: .constant(.automatic)) {
                    ForEach(viewModel.filterWikis(searchText)) { item in
                        if categoryType == categoryType {
                            Annotation(item.title, coordinate: item.location.coordinate, anchor: .center) {
                                Button {
                                    passWikiToSheet = item
                                    isSheetPresented.toggle()
                                } label : {
                                    MapAnnotationView(wiki: item)
                                }
                            }
                            .annotationTitles(.hidden)
                        }
                    }
                }
//                .colorScheme(.dark)
                // toolbar
                VStack {
                    CategoryFilterButtonView(categoryType: $categoryType)
                    UIKitSearchBarView(text: $searchText)
                    Spacer()
                }
                .padding(.top, 10)
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
        }

        .sheet(isPresented: $isSheetPresented, content: {
            MapSheetView(wiki: passWikiToSheet)
            .presentationDetents([.medium])
            .presentationBackground(.backgroundLightBlue.opacity(0.4))
        })
    }
}
#Preview {
    MapView()
        .environment(SharedWikiViewModel())
}
