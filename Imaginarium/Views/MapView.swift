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
    @State var vm: SharedWikiViewModel = SharedWikiViewModel(
        title: "Toy Story", subtitle: "Univers Pixar", creator: maya, imageName: URL(string: "https://picsum.photos/600/400?random=10")!, description: "Toy Story raconte les aventures de jouets qui prennent vie lorsque les humains ne les regardent pas.", mediaImages: [
        URL(string: "https://picsum.photos/600/400?random=11")!,
        URL(string: "https://picsum.photos/600/400?random=12")!,
        URL(string: "https://picsum.photos/600/400?random=13")!
    ], category: .films, createdAt: Date(), tags: [
        "Pixar",
        "Animation",
        "Aventure"
    ], location: CLLocation(
        latitude: 37.8324,
        longitude: -122.2851
    )
    )
    
    @State private var searchText: String = ""
    
    var body: some View {
        ZStack {
            Map()
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
// pour le testing; a effacer apres
let maya = User(
    id: UUID(),
    email: "maya@imaginarium.app",
    pseudo: "Maya",
    password: "password",
    profilPicture: URL(string: "https://i.pravatar.cc/300?img=32")!,
    pays: .france,
    description: "Fan de cinéma, animation et univers imaginaires.",
    createdAt: Date(),
    role: .user
)
