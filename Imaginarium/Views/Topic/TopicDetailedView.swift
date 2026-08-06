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
            VStack{
                TopicImageView(topic: topic)
                    .frame(maxWidth: .infinity,maxHeight: 200)
                    .clipped()
                Text(topic.subject)
                    .foregroundStyle(.white)
                    .font(.title)
                
                VStack {
                    
                }
                
            }
            .padding()
        }
    }
}
