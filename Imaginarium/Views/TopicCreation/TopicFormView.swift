//
//  TopicFormView.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 11/08/2026.
//

import SwiftUI

struct TopicFormView: View {
    
    @Environment(TopicViewModel.self) var topicVM
    @State private var showSuccessAlert = false
    
    var body: some View {
        @Bindable var viewModel = topicVM
        
        ZStack {
            BackgroundGradient()
                .ignoresSafeArea()
            ScrollView{
                HStack {
                    ComponentTitle(title: "Création du Topic")
                        .padding()
                    Spacer()
                }
                VStack{
                    
                    Group{
                        TextField("URL de l'image", text: $viewModel.imgTextToURL)
                        TextField("Titre", text: $viewModel.topic.title, axis: .vertical)
                        TextField("Sujet", text: $viewModel.topic.subject, axis: .vertical)
                        TextField("Description", text: $viewModel.message, axis: .vertical)
                    }
                    .padding()
                    .background()
                    .cornerRadius(4)
                    
                    Picker(selection: $viewModel.topic.category) {
                        ForEach(TopicCategory.allCases, id: \.self) { category in
                            Text(String(describing: category)).tag(category)
                        }
                    } label: {
                        Text("Catégorie")
                    }
                    .tint(.black)
                    .background(.accentLight)
                    .cornerRadius(8)
                    
                    if !viewModel.errorMessages.isEmpty {
                        VStack(alignment: .leading, spacing: 4) {
                            ForEach(viewModel.errorMessages, id: \.self) { message in
                                Text(message)
                                    .foregroundStyle(.white)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Button("Créer le topic") {
                        if topicVM.createTopic() {
                            showSuccessAlert = true
                        }
                    }
                    .foregroundStyle(.white)
                    .font(.title2.bold())
                    .padding(8)
                    .background(.accentDark)
                    .cornerRadius(16)
                    .padding()
                }
                .padding()
                .background(Color.black.opacity(0.15))
                .cornerRadius(8)
            }
        }
        .alert("Topic créé avec succès !", isPresented: $showSuccessAlert) {
            Button("Retour a la communauté") {
                //navigation vers communauté
            }
        }
    }
}


#Preview {
    TopicFormView()
        .environment(TopicViewModel())
}
