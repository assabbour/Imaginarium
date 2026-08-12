//
//  DividerTopic.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 03/08/2026.
//
import SwiftUI

struct TitleDividerTopic: View {
    let color: Color = .white
    let width: CGFloat = 1
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: width)
    }
}

