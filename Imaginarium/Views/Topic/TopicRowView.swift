//
//  TopicRowView.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 30/07/2026.
//

import SwiftUI

struct TopicRowView: View {
    var topic : Topic
    var body: some View {
        VStack {
            VStack {
                Text("\(topic.subject)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                Spacer()
                Text("\(topic.title)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)
                
            }
            .padding(.top,6)
            .padding(.horizontal,6)
            .frame(minHeight: 100)
            .foregroundStyle(.white)
            
            
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
            .frame(width:220,height: 130)
            .clipped()
            
        }
        .frame(maxWidth: 220, maxHeight: 230)
        .background(Color.black.opacity(0.15))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .padding(4)
    }
}

#Preview {
    TopicRowView(topic: MockData.topics[0])
    TopicRowView(topic: MockData.topics[1])
    
}
