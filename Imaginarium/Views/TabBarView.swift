//
//  TabBarView.swift
//  Imaginarium
//
//  Created by apprenant102 on 07/08/2026.
//

import SwiftUI

struct TabBarView: View {
    // put shared viex model
    
    var body: some View {
        TabView {
            Tab("Imaginopedia", systemImage: "book.fill") {
                WikiView()
            }
            
            Tab("Carte", systemImage: "map.fill") {
                MapView()
            }
            
            Tab("Communauté", systemImage: "bubble") {
                TopicHubView()
            }
            Tab("Profil", systemImage: "person") {
                TopicHubView()
            }
            
        }
        
        .accentColor(.white)
        
        
    }
}

#Preview {
    TabBarView()
}
