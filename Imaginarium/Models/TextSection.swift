//
//  TextSection.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 03/08/2026.
//

import Foundation

struct TextSection: Identifiable { // gestion d'un bloc text
    let id = UUID()
    var title: String
    var content: String
}
