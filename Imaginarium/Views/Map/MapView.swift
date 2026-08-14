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
    @State var isSheetPresentedDetail: Bool = false
    @State var passWikiToSheet: Wiki = MockData.wikis[.random(in: 1...10)] // default data, we never see it
    var body: some View {
        NavigationStack() {
            ZStack {
                Map(position:
                        .constant(.automatic)
                    ,interactionModes: [.pan, .zoom]) {
                    ForEach(sharedViewModel.filterWikis(searchText, selected: sharedViewModel.selectedCategory)) { item in
                        Annotation(item.title, coordinate: item.location.coordinate, anchor: .center) {
                            Button {
                                passWikiToSheet = item
                                isSheetPresented = true
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
        .sheet(isPresented: $isSheetPresented, onDismiss: {isSheetPresented = false; isSheetPresentedDetail = false} , content: {
            MapSheetView(wiki: passWikiToSheet, isSheetPresentedDetail: $isSheetPresentedDetail)
                .presentationDetents([isSheetPresentedDetail ? .large : .medium])
                .presentationBackground(.backgroundDarkBlue.opacity(0.6))
                .overlay {
                    if isSheetPresentedDetail {
                        ZStack(alignment: .top) {
                            WikiDetailView(wiki: passWikiToSheet)
                            Rectangle()
                                .frame(width: 60, height: 5)
                                .foregroundStyle(.backgroundLightBlue.opacity(0.5))
                                .padding(.top, 5)
                                .padding(.horizontal)
                        }
                    }
                }
                .animation(.easeInOut)
        })
    }
}
#Preview {
    MapView()
        .environment(SharedWikiViewModel())
}


/*
 
 Code to implement later for closer control over map coordinates
 
 extension CLLocationCoordinate2D {
 static let Marseille: Self = .init(
 latitude: 43.2969,
 longitude: 5.3810
 )
 }
 
 @State var itemPosition: MapCameraPosition? = nil
 
 func mapCameraPosition() {
 if isSheetPresented {
 .constant(.region(MKCoordinateRegion(center: itemPosition, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))))
 
 } else {
 .constant(.automatic)}
 }
 
 Map(initialPosition: .region(MKCoordinateRegion(center: regions.coordonneeGPS, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))))
 
 .onChange(of: isSheetPresented) {
 MapCamera(centerCoordinate: itemPosition ?? .Marseille, distance: 1)
 }
 
 */
