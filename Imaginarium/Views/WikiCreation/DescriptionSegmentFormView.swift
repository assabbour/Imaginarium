//
//  DescriptionSegmentFormView.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 03/08/2026.
//

import SwiftUI

struct DescriptionSegmentFormView: View {
    @Environment(SharedWikiViewModel.self) var wikiCreationViewModel
    var body: some View {
        ZStack{
            BackgroundGradient()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    DescriptionSegmentFormView()
}
