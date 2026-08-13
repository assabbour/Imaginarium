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
    
    var errorMessages: [String] = []
        var message: String = ""
        var imgTextToURL: String = ""
        
        func validateTopic() -> Bool {
            errorMessages = []
            
            if topic.title.trimmingCharacters(in: .whitespaces).isEmpty {
                errorMessages.append("Le titre est obligatoire")
            }
            
            if topic.subject.trimmingCharacters(in: .whitespaces).isEmpty {
                errorMessages.append("Le sujet est obligatoire")
            }
            
            if message.trimmingCharacters(in: .whitespaces).isEmpty {
                errorMessages.append("Le message est obligatoire")
            }
            
            var imageURL: URL? = nil
            if !imgTextToURL.isEmpty {
                if let url = URL(string: imgTextToURL) {
                    imageURL = url
                } else {
                    errorMessages.append("L'URL de l'image n'est pas valide")
                }
            }
            
            guard errorMessages.isEmpty else {
                return false
            }
            
            topic.message = message
            if let imageURL {
                topic.image = imageURL
            }
            return true
        }
        
        func createTopic() -> Bool {
            guard validateTopic() else {
                return false
            }
            
            copy.append(topic)
            return true
        }
    
    
    
    // ajout histoire de
    var displayedCategories: [TopicCategory] {
        if let category = isCategorySelected {
            return [category]
        } else {
            return TopicCategory.allCases
        }
    }

}

