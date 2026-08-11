//
//  DescriptionSegment.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 03/08/2026.
//

import Foundation

struct TextSection: Identifiable, Hashable { // gestion d'un bloc text
    let id: UUID = UUID()
    var title:String
    var contents: String
}

struct DescriptionSegment: Hashable {
    var sections: [TextSection]
}
