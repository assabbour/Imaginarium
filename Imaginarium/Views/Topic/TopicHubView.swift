//
//  TopicHubView.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 31/07/2026.
//

import SwiftUI

struct TopicHubView: View {
    var body: some View {
        ZStack {
            BackgroundGradient()
            VStack {
                TopicCategoryView()
            }
        }
    }
}

#Preview {
    TopicHubView()
}
