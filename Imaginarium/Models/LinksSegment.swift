//
//  LinksSegment.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 03/08/2026.
//

import Foundation

struct LinkItem: Identifiable {
    let id: UUID = UUID()
    var linkedTitle: String//Titre du wiki
    var linkedWikiImage: URL //Img d'un wiki, definir nil par defaut car pas d'autre valeur par defaut hormis une image (ou un nil)
    var linkedWikiID: UUID
}

struct LinksSegment {
    var links: [LinkItem]
}
