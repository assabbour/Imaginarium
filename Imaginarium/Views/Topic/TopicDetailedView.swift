//
//  TopicDetailedView.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 05/08/2026.
//

import SwiftUI

struct TopicDetailedView: View {
    @Environment(TopicViewModel.self) var topicVM

    var topic : Topic
    var body: some View {
        AsyncImage(url: topic.image){ result in
            if let image = result.image {
                image
                    .resizable()
                    .scaledToFill()
                    .allowsHitTesting(false)
            } else {
                Image("placeholder")
                    .resizable()
                    .scaledToFill()
                    .allowsHitTesting(false)
            }
        }
    }
}

