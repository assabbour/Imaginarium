//
//  LinksSegment.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 03/08/2026.
//

import Foundation

// LinksSegment.swift

struct LinkItem: Identifiable {
    let id = UUID()
    var linkedWikiImage: String //Img d'un wiki
    var linkedWikiID: UUID
}

struct LinksSegment {
    var links: [LinkItem]
}
