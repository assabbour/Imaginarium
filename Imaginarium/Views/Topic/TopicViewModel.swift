//
//  TopicViewModel.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 04/08/2026.
//

import Foundation

@Observable
class TopicViewModel {
    
    var copy = MockData.topics
    
// Porprietes d'un Topic
    

    var topic: Topic = Topic(
        subject: "",
        title: "",
        creator: MockData.alex,
        message: "",
        category: .Favoris,
        image: URL(string: "https://votre-image.com/test.jpg")!,
        comments: []
    )
    
    
    func filterTopic(_ topicFiltered: TopicCategory) -> [Topic] {
        return copy.filter{$0.category == topicFiltered}
    }
    
    func comments(_ topic: Topic) -> [Comment] {
        for actualTopic in copy {
            if actualTopic.id == topic.id {
                return actualTopic.comments
            }
        }
        return []
    }
    
    func addComment(_ commentAdded: String, topic: Topic) {
        if let index = copy.firstIndex(where: { $0.id == topic.id }) {
            let newComment = Comment(creator: topic.creator, message: commentAdded, createdAt: Date())
            return copy[index].comments.append(newComment)
        }
    }
        
// Validation du TopicForm
    
    var message: String = ""
}
