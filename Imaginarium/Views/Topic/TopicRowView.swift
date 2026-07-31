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
                    .padding(4)

                Text("\(topic.title)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(4)

            }
            .frame(minHeight: 100)
            
            AsyncImage(url: topic.image){ result in
                if let image = result.image {
                    image
                        .resizable()
                        .scaledToFill()
                    
                } else {
                    Image("placeholder")
                        .resizable()
                        .scaledToFill()
                        
                }
            }
            .frame(minWidth: 200,maxWidth: 200,minHeight: 150, maxHeight: 150)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
        }
        .frame(maxWidth: 200, maxHeight: 250)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .padding()
            
        
        
        
    }
}

#Preview {
    TopicRowView(topic: MockData.topics[0])
    TopicRowView(topic: MockData.topics[1])

}
