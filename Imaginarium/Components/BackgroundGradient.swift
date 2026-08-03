//
//  BackgroundGradient.swift
//  Imaginarium
//
//  Created by apprenant102 on 29/07/2026.
//

import SwiftUI

struct BackgroundGradient: View {
    var body: some View {
        LinearGradient(
            colors: [Color("BackgroundDark"), Color("BackgroundLight")],
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundGradient()
}
