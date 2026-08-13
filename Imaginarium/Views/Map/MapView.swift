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
//                Map(initialPosition: .region(MKCoordinateRegion(center: regions.coordonneeGPS, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))))
                
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
                VStack {
                    SharedHeaderView(searchText: $searchText, title: "Imaginarium")
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
