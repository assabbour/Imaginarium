//
//  TopicDetailedHeaderRow.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 11/08/2026.
//

import SwiftUI

struct TopicDetailedHeaderRowView: View {
    var topic: Topic
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                AsyncImage(url: topic.creator.profilPicture){ result in
                    if let image = result.image {
                        image
                            .resizable()
                            .frame(width: 35, height: 35)
                            .clipShape(.circle)
                            .allowsHitTesting(false)
                    } else {
                        Image("placeholder")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .clipShape(.circle)
                            .allowsHitTesting(false)
                    }
                }
                Text(topic.creator.pseudo)
                    .foregroundStyle(.white)
            }
            Text(topic.title)
                .foregroundStyle(.white)
            TitleDividerTopic()
                .padding(.vertical)
            
            Text("En dur le temps de changé les modeles En dur le temps de changé les modelesEn dur le temps de changé les modelesEn dur le temps de changé les modelesEn dur le temps de changé les modeles")
                .foregroundStyle(.white)

        }
    }
}
