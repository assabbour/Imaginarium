//
//  CategorySelectionView.swift
//  Imaginarium
//
//  Created by apprenant102 on 12/08/2026.
//

import SwiftUI


struct CategorySelectionView: View {
    
    @Environment(SharedWikiViewModel.self) var sharedViewModel
    var body: some View {
        Menu{
            ForEach(Category.allCases, id: \.self) { category in
                Button {
                    sharedViewModel.selectedCategory = category
                } label: {
                    if sharedViewModel.selectedCategory == category {
                        Label(category.rawValue.capitalized, systemImage: "checkmark")
                    } else {
                        Text(category.rawValue.capitalized)
                    }
                }
            }
        } label: {
            CategoryFilterButtonView()
        }
    }
}
