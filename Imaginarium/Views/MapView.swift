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
    // to change later this list for a shared list in an environment
    var MapList = MockData.wikis
    
    @State private var searchText: String = ""
    
    var body: some View {
        ZStack {
            Map(
                // map logic here
            )
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        // Action du menu/filtre
                    }) {
                        Image(systemName: "line.3.horizontal.decrease")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                }
                .padding(.bottom, 8)
                .padding(.horizontal)
                
                SearchBarView(text: $searchText, placeholder: "Search")
                    .padding(.horizontal)
                Spacer()
            }
            
        }
    }
}

#Preview {
    MapView()
}
