//
//  TopicCategoyTitleView.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 05/08/2026.
//

import SwiftUI

struct TopicCategoyTitleView: View {
    var topicFiltered: TopicCategory
    var body: some View {
        VStack {
            Text("\(topicFiltered.self)")
                .foregroundStyle(.white)
                .font(.title)
                .frame(maxWidth: .infinity,alignment: .leading)
            DividerTopic()
                .frame(width: 200)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
    }
}
