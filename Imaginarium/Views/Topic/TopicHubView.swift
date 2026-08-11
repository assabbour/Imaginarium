//
//  TopicHubView.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 31/07/2026.
//

import SwiftUI

struct TopicHubView: View {
    @State private var topicVM = TopicViewModel()
    @State var path: [Topic] = []

    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                BackgroundGradient()
                VStack {
                    TopicCategoryView(path: $path)
                }
            }
            .navigationDestination(for: Topic.self) { selectedTopic in
                TopicDetailedView(topic: selectedTopic)
            }
        }
        .environment(topicVM)
    }
}

#Preview {
    TopicHubView()
}
