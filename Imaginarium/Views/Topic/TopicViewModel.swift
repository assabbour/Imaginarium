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
    
    func filterTopic(_ topicFiltered: TopicCategory) -> [Topic] {
        return copy.filter{$0.category == topicFiltered}
    }
}
