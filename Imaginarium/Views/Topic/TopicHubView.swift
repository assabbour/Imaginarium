//
//  TopicHubView.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 31/07/2026.
//

import SwiftUI

struct TopicHubView: View {
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack {
                ForEach(MockData.topics) { topic in
                    TopicRowView(topic: topic)
                }
            }
        }
        
        
    }
}

#Preview {
    TopicHubView()
}
