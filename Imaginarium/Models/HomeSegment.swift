//
//  HomeSegment.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 03/08/2026.
//

import Foundation

struct Element: Identifiable, Hashable {
    let id:UUID = UUID()
    var elementName: String
    var description: String
}

struct HomeSegment: Hashable {
    var elements: [Element]
}
