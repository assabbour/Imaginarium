//
//  HeaderTopicView.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 13/08/2026.
//

import SwiftUI

struct HeaderTopicView: View {
    @Binding var searchText: String
    
    var body: some View {
        VStack{
            HStack {
                ComponentTitle(title: "Communauté")
                Spacer()
                ButtonFilterTopic()
            }
            .padding()
            UIKitSearchBarView(text: $searchText)
        }
        .padding(.horizontal)
    }
}
