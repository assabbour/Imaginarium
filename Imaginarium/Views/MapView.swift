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
   
    @Environment(SharedWikiViewModel.self) var sharedViewModel
    
    @State private var searchText: String = ""
    @State var isSheetPresented: Bool = false
    @State var passWikiToSheet: Wiki = MockData.wikis[0] // default data, we never see it
    
    var body: some View {
        NavigationStack() {
            ZStack {
                Map(position: .constant(.automatic)) {
                    ForEach(sharedViewModel.filterWikis(searchText, selected: sharedViewModel.selectedCategory)) { item in
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
//                .colorScheme(.dark)
//                VStack {
//                    CategorySelectionView()
//                        .padding(.horizontal, 18)
//                        .padding(.top, 8)
//                        .padding(.bottom, 5+5)
//                    UIKitSearchBarView(text: $searchText)
//                    Spacer()
//                }
                VStack {
                    SharedHeaderView(searchText: $searchText, title: "")
                    Spacer()
                }
                
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
        }
        .toolbar(content: {
            CategorySelectionView()
        })
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
