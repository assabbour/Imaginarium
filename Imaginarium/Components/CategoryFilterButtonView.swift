//
//  CategoryFilterButtonView.swift
//  Imaginarium
//
//  Created by apprenant102 on 11/08/2026.
//

import SwiftUI

struct CategoryFilterButtonView: View {
    
    @Environment(SharedWikiViewModel.self) var sharedViewModel
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .font(.title)
                    .glassEffect(.clear)
            }
        }
        .padding(.top, 5)
        .padding(.bottom, 5)
        .padding(.horizontal)
    }
}
