//
//  CategoryFilterButtonView.swift
//  Imaginarium
//
//  Created by apprenant102 on 11/08/2026.
//

import SwiftUI

struct CategoryFilterButtonView: View {
    @Binding var categoryType: Category
    
// This is how we avoid passing the var name in the view constructor
//    init(_ categoryType: Binding<String>) {
//        self._categoryType = categoryType
//    }
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                // Action ou on change la categorie
            }) {
                Image(systemName: "line.3.horizontal.decrease")
                    .font(.title2)
                    .foregroundColor(.white)
            }
        }
        .padding(.bottom, 8)
        .padding(.horizontal)
    }
}

//#Preview {
//    CategoryFilterButtonView()
//}
