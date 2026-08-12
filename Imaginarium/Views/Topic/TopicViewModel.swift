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
    var isCategorySelected: TopicCategory? = nil
    
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
    
    func filterTopicSearchBar(_ searchText: String, categorySelected: TopicCategory) -> [Topic] {
        if searchText.isEmpty {
            return filterTopic(categorySelected)
        } else {
            return filterTopic(categorySelected).filter { topic in
                topic.subject.localizedCaseInsensitiveContains(searchText)
                || topic.title.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var displayedCategories: [TopicCategory] {
        if let category = isCategorySelected {
            return [category]
        } else {
            return TopicCategory.allCases
        }
    }
}
