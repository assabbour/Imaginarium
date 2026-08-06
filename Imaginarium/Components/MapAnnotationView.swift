//
//  MapAnnotationView.swift
//  Imaginarium
//
//  Created by apprenant102 on 03/08/2026.
//

import SwiftUI

struct MapAnnotationView: View {
    let wiki: Wiki
    var body: some View {
        ZStack(alignment: .center) {
            BackgroundGradient()
            UnevenRoundedRectangle(topLeadingRadius: 35.0,bottomLeadingRadius: 25.0, bottomTrailingRadius: 25.0, topTrailingRadius: 35.0)
                .frame(width: 95, height: 92)
                .foregroundStyle(.backgroundDarkBlue)
            Triangle()
                .rotation(Angle(degrees: 180))
                .fill(.backgroundDarkBlue)
                .frame(width: 70, height: 15)
                .offset(x:0, y:50)
            AsyncImage(url: wiki.imageName) { image in
                image.resizable()
                } placeholder: {
                    Image(systemName: "photo")
                }
                    .scaledToFill()
                    .frame(width: 84, height: 84)
                    .clipped()
                    .cornerRadius(28)
                }
    }
}

#Preview {
    MapAnnotationView(wiki: MockData.wikis[0])
}
