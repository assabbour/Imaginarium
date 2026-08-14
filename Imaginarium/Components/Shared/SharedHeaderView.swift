//
//  SharedHeaderView.swift
//  Imaginarium
//
//  Created by apprenant102 on 12/08/2026.
//

import SwiftUI

struct SharedHeaderView: View {
    @Binding var searchText: String
    var title: String
    var body: some View {
        VStack {
            HStack {
                ComponentTitle(title: title)
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.white)
                    .frame(minHeight:65)
                Spacer()
                CategorySelectionView()
            }
            .padding(.leading)
            
            UIKitSearchBarView(text: $searchText)
        }
        .padding(.horizontal)
    }
    
}

//#Preview {
//    SharedHeaderView()
//}
