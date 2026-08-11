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
        @Bindable var viewModel = topicVM
        
        ZStack {
            BackgroundGradient()
                .ignoresSafeArea()
            
            VStack{
//                AsyncImage(url: URL(string: image)) { image in
//                    image.resizable().scaledToFill()
//                } placeholder: {
//                    ProgressView()
//                }
                
                TextField("Titre", text: $viewModel.topic.title)
                TextField("Sujet", text: $viewModel.topic.subject)
                TextField("Description", text: $viewModel.message)
                
                TopicCommentFormView()
                

            Picker("Catégorie", selection: $viewModel.copy) {
                ForEach(Category.allCases, id: \.self) { category in
                    Text(String(describing: category)).tag(category)
                    }
                }
            }
        }
    }
}

#Preview {
    TopicFormView()
        .environment(TopicViewModel())
}


