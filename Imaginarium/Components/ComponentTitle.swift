//
//  ComponentTitle.swift
//  Imaginarium
//
//  Created by Apprenant 109 on 11/08/2026.
//

import SwiftUI

struct ComponentTitle: View {
    var title : String
    
    var body: some View {
        Text(title)
            .font(.system(size: 35))
            .fontWeight(.semibold)
            .padding()
            .frame(maxWidth: .infinity, alignment: .center)
            .foregroundStyle(.white)
        
    }
}
