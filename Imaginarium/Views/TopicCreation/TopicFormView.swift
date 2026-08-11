//
//  TopicFormView.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 11/08/2026.
//

import SwiftUI

struct TopicFormView: View {
    
    @Environment(TopicViewModel.self) var topicVM
    
    var body: some View {
        ZStack {
            BackgroundGradient()
                .ignoresSafeArea()
            
//            Picker("Catégorie", selection: $topicVM) {
//                ForEach(Category.allCases, id: \.self) { category in
//                    Text(String(describing: category)).tag(category)
//                }
//            }
        }
    }
}

#Preview {
    TopicFormView()
}


//enum TopicCategory :Hashable, CaseIterable {
//    case Favoris
//    case Trending
//    case Decouvrir
//
//}
//
//struct Topic:Hashable, Identifiable {
//    let id = UUID()
//    /// Sujet de la discussion.
//    var subject: String
//    let title: String
//    var creator: User
//    let message: String?
//    var category : TopicCategory
//    /// Image facultative associée à la publication.
//    let image: URL?
//    /// Réponses des autres utilisateurs.
//    let comments: [Comment]
//}
