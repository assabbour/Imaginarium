////
////  ButtonFilterTopic.swift
////  Imaginarium
////
////  Created by Apprenant 109 on 12/08/2026.
////
//
//import SwiftUI
//
//struct ButtonFilterTopic: View {
//    @Environment(TopicViewModel.self) var topicVM
//    var topic : Topic
//    var body: some View {
//        Menu{
//            Text("Liste des filtres")
//            Text("Choisissez un type d'art")
//            
//            Button {
//                topicVM.isCategorySelected = nil
//            } label: {
//                if topicVM.isCategorySelected == nil {
//                    Label("Tous", systemImage: "checkmark")
//                } else {
//                    Text("Tous")
//                }
//            }
//            ForEach(TopicCategory.allCases) { topic in
//                Button {
//                    topicVM.isCategorySelected = topic
//                } label: {
//                    if topicVM.isCategorySelected == topic {
//                        Label(topic.rawValue.capitalized, systemImage: "checkmark")
//                    } else {
//                        Text(topic.rawValue.capitalized)
//                    }
//                }
//            }
//        } label: {
//            Image(systemName: "line.3.horizontal.decrease.circle")
//                .font(.title2)
//                .foregroundColor(.black)
//        }
//    }
//}
//
