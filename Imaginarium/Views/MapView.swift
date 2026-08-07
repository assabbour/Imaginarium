//
//  MapView.swift
//  Imaginarium
//
//  Created by apprenant102 on 30/07/2026.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    // Recuperattion des données du WikiViewModel
    
//    @Environment(WikiViewModel.self) var viewModel
    
    
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
