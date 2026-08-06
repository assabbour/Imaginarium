//
//  HomeSegmentCreationWiki.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 30/07/2026.
//

import SwiftUI

struct HomeSegmentCreationWiki: View {
    @Binding var datas : [Wiki]
    
    @State var image: String
    @State var title: String
    @State var description: String
    @State var elements: [String] // comment enregistrer des données
    
    var body: some View {
        
        ZStack{
            BackgroundGradient() /*applique la couleur sur toute la zstack et lui donne une taille*/
                .ignoresSafeArea() /* Applique le safeArea UNIQUEMENT sur le background et pas a toute la view donc cool*/
            Form {
                VStack{
                    //                        Text($image)
                    HStack{
                        TextField("Ajouter une image", text: $image)
                        //                        Button
                    VStack{
                        TextField("Titre", text: $title)
                            //                        Map{location}
                    }
                    }
                    //                TextField("nom element", text: $elements)
                    
                    //                Button{} ajouter des elements
                    
                    TextField("Description", text: $description) // description
                }
                
                // import des btn valider et supprimer
            }.scrollContentBackground(.hidden)
        }
    }
}
#Preview {
//    HomeSegmentCreationWiki(datas: .constant(MockData.wikis),image: "imageProfil", title: "titre", location: "loc", description: "description", elements: ["lalal"])
}
