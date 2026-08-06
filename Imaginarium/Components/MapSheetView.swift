//
//  MapSheetView.swift
//  Imaginarium
//
//  Created by apprenant102 on 06/08/2026.
//

import SwiftUI

struct MapSheetView: View {
    let wiki: Wiki
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: wiki.imageName) { image in
                image.resizable()
            }
            placeholder: {
                Image(systemName: "photo")
            }
            .scaledToFill()
            .frame(maxWidth: .infinity, maxHeight: 180)
            .clipped()
            .allowsHitTesting(false)
            Text(wiki.description)
                .padding(.bottom, 5)
                .font(.default)
                .padding(.horizontal, 18)
                .padding(.top)
                
        }
//        .sheet(isPresented: .constant(true), content: {
//            Text("zefhjzfn")
//                .presentationDetents([.medium, .large])
//        })
//        .glassEffect(.regular)
    }
}

#Preview {
    MapSheetView(wiki: MockData.wikis[0])
}
