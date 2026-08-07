//
//  LinksSegmentFormView.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 03/08/2026.
//

import SwiftUI

struct LinksSegmentFormView: View {
    
//    @Environment(WikiCreationViewModel.self) var wikiCreationViewModel
    
    @State var linkedImage: [String] // mettre info du wiki choisi
    @State var linkedWikiID: UUID
    
    var body: some View {
        ZStack{
            BackgroundGradient()
                .ignoresSafeArea()
            //Ajouter le picker pour qu'il soit fix pdt le scroll
            ScrollView{
            
            }
        }
    }
}

#Preview {
//    LinksSegmentFormView()
}
