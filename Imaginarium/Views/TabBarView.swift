//
//  TabBarView.swift
//  Imaginarium
//
//  Created by apprenant102 on 07/08/2026.
//

import SwiftUI

struct TabBarView: View {
    // put shared view model and add invironment at the bottom of tabview
    
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
//        .environment(<#T##object: (Observable & AnyObject)?##(Observable & AnyObject)?#>)
        .accentColor(.white)
    }
}

#Preview {
    TabBarView()
}
