//
//  TabBarView.swift
//  Imaginarium
//
//  Created by apprenant102 on 07/08/2026.
//

import SwiftUI

struct TabBarView: View {
    // put shared view model and add invironment at the bottom of tabview
    @State var sharedViewModel = SharedWikiViewModel()
    
    var body: some View {
        TabView {
            Tab("Imaginarium", systemImage: "book.fill") {
                WikiView()
            }
            
            Tab("Carte", systemImage: "map.fill") {
                MapView()
            }
            
            Tab("Communauté", systemImage: "bubble") {
                TopicHubView()
            }
            Tab("Profil", systemImage: "person") {
                UserProfileView()
            }
        }
        .environment(sharedViewModel)
        .accentColor(.white)
        .colorScheme(.dark)
    }
}

#Preview {
    TabBarView()
}
