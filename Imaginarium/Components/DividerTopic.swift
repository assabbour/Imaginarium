//
//  DividerTopic.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 03/08/2026.
//
import SwiftUI

struct DividerTopic: View {
    let color: Color = .white
    let width: CGFloat = 2
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: width)
            .edgesIgnoringSafeArea(.horizontal)
    }
}

