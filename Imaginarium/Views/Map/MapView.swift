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
    @State var itemPosition: MapCameraPosition? = nil
    /*
    func mapCameraPosition() {
        if isSheetPresented {
            .constant(.region(MKCoordinateRegion(center: itemPosition, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))))
            
        } else {
            .constant(.automatic)}
    }
    
    Map(initialPosition: .region(MKCoordinateRegion(center: regions.coordonneeGPS, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))))
    */
    var body: some View {
        NavigationStack() {
            ZStack {
                Map(position:
                        .constant(.automatic)
                    ,interactionModes: [.pan, .zoom]) {
                    
                    ForEach(sharedViewModel.filterWikis(searchText, selected: sharedViewModel.selectedCategory)) { item in
                            Annotation(item.title, coordinate: item.location.coordinate, anchor: .center) {
                                Button {
//                                    itemPosition = MapCameraPosition
                                    passWikiToSheet = item
                                    isSheetPresented.toggle()
                                } label : {
                                    MapAnnotationView(wiki: item)
                                }
                            }
                            .annotationTitles(.hidden)
                    }
                }
                .mapStyle(
                            .hybrid(
                                elevation: .realistic,
                                pointsOfInterest: .all,
                                showsTraffic: true
                            )
                        )
//                .onChange(of: isSheetPresented) {
//                    MapCamera(centerCoordinate: itemPosition ?? .Marseille, distance: 1)
//                }
                
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
            .presentationBackground(.backgroundDarkBlue.opacity(0.6))
        })
    }
}
#Preview {
    MapView()
        .environment(SharedWikiViewModel())
}

extension CLLocationCoordinate2D {
    static let Marseille: Self = .init(
        latitude: 43.2969,
        longitude: 5.3810
    )
}
