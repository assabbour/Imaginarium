//
//  TopicCreationButtonView.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 12/08/2026.
//

import SwiftUI

struct TopicCreationButtonView: View {
    @Binding var path : [Destination]
    var body: some View {
        Button {
            path.append(Destination.create)
        }label: {
            Image(systemName: "plus")
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .font(.title)
                .padding(20)
                .background(Color.accentDark.opacity(0.70))
                .glassEffect(.clear)
                .clipShape(Circle())
        }
        .padding()
    }
}
