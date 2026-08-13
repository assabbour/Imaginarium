//
//  BackgroundGradient.swift
//  Imaginarium
//
//  Created by apprenant102 on 29/07/2026.
//

import SwiftUI
// to use for the background in our Views
struct BackgroundGradient: View {
    var body: some View {
        LinearGradient(
            colors: [Color("backgroundDarkBlue"), Color("backgroundLightBlue")],
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundGradient()
}
