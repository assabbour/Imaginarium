//
//  TopicViewModel.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 04/08/2026.
//

import Foundation

@Observable
class TopicViewModel {
    
    func filterTopic(_ topicFiltered: TopicCategory) -> [Topic] {
        return MockData.topics.filter{$0.category == topicFiltered}
    }
}
