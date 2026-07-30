//
//  ContentView.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 23/07/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundGradient()
            //LALA
            VStack {
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
