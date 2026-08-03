//
//  AccentGradient.swift
//  Imaginarium
//
//  Created by apprenant102 on 29/07/2026.
//

import SwiftUI
// to use for accent in components, like buttons
struct AccentGradient: View {
    var body: some View {
        LinearGradient(
            colors: [ Color("accentDark"), Color("accentExtraLight")],
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }
}

#Preview {
    AccentGradient()
}
