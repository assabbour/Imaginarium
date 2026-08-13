//
//  ButtonFilterTopic.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 12/08/2026.
//

import SwiftUI

struct ButtonFilterTopic: View {
    @Environment(TopicViewModel.self) var topicVM
    var body: some View {
        Menu{
            ForEach(TopicCategory.allCases, id: \.self) { topicClicked in
                Button{
                    if topicVM.isCategorySelected == topicClicked {
                        topicVM.isCategorySelected = nil
                    } else {
                        topicVM.isCategorySelected = topicClicked
                    }
                }label: {
                    Text(topicClicked.rawValue)
                }
            }
        }label: {
            Image(systemName: "line.3.horizontal.decrease.circle")
                .font(.title)
                .glassEffect(.clear)
        }
    }
}

