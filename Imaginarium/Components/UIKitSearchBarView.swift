//
//  UIKitSearchBarView.swift
//  Imaginarium
//
//  Created by apprenant102 on 11/08/2026.
//

import SwiftUI

struct UIKitSearchBarView: View {
    
    @Binding var text: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white.opacity(0.7))
                    .padding(.leading, 15)
                    .padding(.trailing, 3)
                TextFieldUIKit(text: $text) // UI Kit struct declared at end of file
                    .frame(width:320, height: 40)
                    .padding(.trailing, 8)
            }
        }
        .background(
            RoundedRectangle(cornerRadius: 20)
                .glassEffect(.regular.tint(.clear).interactive())
        )
        .padding(.horizontal)
        .colorScheme(.dark)
    }
}

#Preview {
    UIKitSearchBarView(text: .constant(""))
}

// UI Kit Implementation

struct TextFieldUIKit : UIViewRepresentable {
    @Binding var text: String
    func makeUIView(context: Context) -> some UITextField {
        let textField = UITextField()
        textField.placeholder = "Search"
        textField.delegate = context.coordinator
        return textField
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.text = text
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    class Coordinator: NSObject, UITextFieldDelegate {
        var parent : TextFieldUIKit
        init(_ parent: TextFieldUIKit) {
            self.parent = parent
        }
        func textFieldDidChangeSelection(_ textField: UITextField) {
            parent.text = textField.text ?? ""
        }
    }
}
