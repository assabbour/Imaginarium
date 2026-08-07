//
//  SwiftUIView.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 06/08/2026.
//

import SwiftUI

struct TopicImageView: View {
    var topic: Topic
    var body: some View {
        AsyncImage(url: topic.image){ result in
            if let image = result.image {
                image
                    .resizable()
                    .scaledToFill()
                    .allowsHitTesting(false)
            } else {
                Image("placeholder")
                    .resizable()
                    .scaledToFill()
                    .allowsHitTesting(false)
            }
        }
    }
}
