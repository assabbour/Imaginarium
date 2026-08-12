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
            Text(wiki.title)
                .font(.title)
                .padding()
            ScrollView(.horizontal) {
                    HStack {
                        ForEach(wiki.gallerySegment?.gallery ?? [], id:\.self) { image in
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
                        }
                    }
            }
            Text(wiki.description)
                .padding(.bottom, 5)
                .font(.default)
                .padding(.horizontal, 8)
                .padding(.top)
        }
        .padding(.horizontal, 8)
    }
}

#Preview {
    MapSheetView(wiki: MockData.wikis[0])
}
