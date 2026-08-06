//
//  MapView.swift
//  Imaginarium
//
//  Created by apprenant102 on 30/07/2026.
//

import SwiftUI
import MapKit

struct MapView: View {
    // to change later this list for a shared list in an environment
    var MapList = MockData.wikis
    
    @State private var searchText: String = ""
    
    var body: some View {
        ZStack {
            BackgroundGradient()
            Text("MapView")
            Map()
        }
    }
}

#Preview {
    MapView()
}
