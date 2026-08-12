//
//  TopicDetailedCommentView.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 11/08/2026.
//

import SwiftUI

struct TopicDetailedCommentView: View {
    @Environment(TopicViewModel.self) var topicVM
    var topic : Topic
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(topicVM.comments(topic), id: \.createdAt) { comment in
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        AsyncImage(url: comment.creator.profilPicture){ result in
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
                        Text(comment.creator.pseudo)
                            .foregroundStyle(.white)
                    }
                    Text(comment.message)
                        .font(.body)
                }
                .foregroundStyle(.white)
                .padding(6)
                .background(Color.black.opacity(0.15))
                .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
    }
}

