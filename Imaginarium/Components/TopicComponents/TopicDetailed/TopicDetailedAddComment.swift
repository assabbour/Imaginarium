//
//  TopicDetailedAddComment.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 11/08/2026.
//

import SwiftUI

struct TopicDetailedAddComment: View {
    @Environment(TopicViewModel.self) var topicVM
    var topic : Topic
    @State var userComment : String = ""
    var body: some View {
        HStack(alignment: .center) {
            TextField("", text: $userComment, prompt: Text("Ajouter un commentaire ?").foregroundColor(.gray))
                .multilineTextAlignment(.leading)
                .padding(4)
                .background(.white)
                .foregroundStyle(.black)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Button {
                topicVM.addComment(userComment, topic: topic)
            } label : {
                Image(systemName: "paperplane.circle.fill")
                    .resizable()
                    .frame(width: 30,height: 30)
                    .foregroundStyle(Color.accentLight)
            }
        }
        .padding()
        .background(Color.black.opacity(0.15))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .frame(maxWidth: .infinity, maxHeight: .infinity)

    }
}

