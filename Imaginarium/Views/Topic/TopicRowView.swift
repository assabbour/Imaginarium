//
//  TopicRowView.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 30/07/2026.
//

import SwiftUI

struct TopicRowView: View {
    var topic: Topic
    
    var body: some View {
        VStack {
            VStack {
                Text("\(topic.subject)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                Text(topic.title)
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(6)
            .padding(.top)
            .frame(minHeight: 100)
            .foregroundStyle(.white)
            
            TopicImageView(topic: topic)
                .frame(width: 220, height: 130)
                .clipped()
        }
        .frame(maxWidth: 220, maxHeight: 230)
        // .glassEffect(in: .rect(cornerRadius: 16.0))
        .background(Color.black.opacity(0.15))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .padding(4)
    }
}
