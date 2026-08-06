//
//  MapView.swift
//  Imaginarium
//
//  Created by apprenant102 on 30/07/2026.
//

import SwiftUI
import MapKit

struct MapView: View {
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
