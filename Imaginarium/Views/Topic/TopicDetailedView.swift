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
        ZStack{
            BackgroundGradient()
            ScrollView {
                VStack{
                    TopicImageView(topic: topic)
                        .frame(maxWidth: .infinity,maxHeight: 200)
                        .clipped()
                        .clipShape(
                            RoundedRectangle(cornerRadius: 8)
                        )
                        .padding(.vertical)
                        
                    Text(topic.subject)
                        .foregroundStyle(.white)
                        .font(.title)
    
                    TopicDetailedHeaderRowView(topic: topic)
                        .padding(6)
                        .background(Color.black.opacity(0.15))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    RowDividerTopic()
                        .padding(.vertical)
                    
                    TopicDetailedCommentView(topic: topic)
                }
                .padding()
            }
        }
    }
}
