//
//  LinksSegment.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 03/08/2026.
//

import Foundation

struct LinkItem: Identifiable {
    let id: UUID = UUID()
    var linkedTitle: String = "" //Titre du wiki
    var linkedWikiImage: URL? = nil//Img d'un wiki, definir nil par defaut car pas d'autre valeur par defaut hormis une image (ou un nil)
    var linkedWikiID: UUID // pour l'affichage du wiki choisi, pas besoin d'optionnel ou de valeur par defaut car cette donné n'est necessaire que si on créé un objet donc si pas d'instance pas besoin de l'id
}

struct LinksSegment {
    var links: [LinkItem] = []
}
