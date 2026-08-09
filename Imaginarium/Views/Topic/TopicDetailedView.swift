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
                    .clipShape(
                        RoundedRectangle(cornerRadius: 8)
                    )
                    
                Text(topic.subject)
                    .foregroundStyle(.white)
                    .font(.title)
                
                VStack(alignment: .leading){
                    HStack {
                        Image("placeholder")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .clipShape(.circle)
                        
                        Text("Yami")
                            .foregroundStyle(.white)
                    }
                    Text(topic.title)
                        .foregroundStyle(.white)
                    TitleDividerTopic()
                    
                    Text("En dur le temps de changé les modeles En dur le temps de changé les modelesEn dur le temps de changé les modelesEn dur le temps de changé les modelesEn dur le temps de changé les modeles")
                        .foregroundStyle(.white)

                }
                .padding(.vertical)
                
                RowDividerTopic()
                    .foregroundStyle(Color.black.opacity(0.15))
                VStack(alignment: .leading) {
                    ForEach(topicVM.comments(topic), id: \.createdAt) { comment in
                        VStack(alignment: .leading, spacing: 4) {
                            // Affiche le créateur du commentaire
                            HStack {
                                Image("placeholder")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .clipShape(.circle)
                                
                                Text("Yami")
                                    .foregroundStyle(.white)
                            }
                            Text(comment.message)
                                .font(.body)
                        }
                        .foregroundStyle(.white)
                        .padding(.vertical, 4)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)

                }
            }
            .padding()
            
        }
    }
}
