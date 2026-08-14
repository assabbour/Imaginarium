//
//  TopicHubView.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 31/07/2026.
//

import SwiftUI

enum Destination: Hashable {
    case topic(Topic)
    case create
}

struct TopicHubView: View {
    @State private var topicVM = TopicViewModel()
    @State var path: [Destination] = []

    var body: some View {
        NavigationStack(path: $path) {
            ZStack(alignment: .bottomTrailing) {
                BackgroundGradient()
                
                TopicCategoryView(path: $path)
                
                TopicCreationButtonView(path: $path)
            }
            .navigationDestination(for: Destination.self) { selectedScreen in
                switch selectedScreen {
                case .topic(let topic):
                    TopicDetailedView(topic: topic)
                case .create:
                    TopicFormView(path: $path)
                }
            }
        }
        .environment(topicVM)
    }
}

#Preview {
    TopicHubView()
}
