//
//  SharedWikiViewModel.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 07/08/2026.
//

import Foundation

@Observable
class SharedWikiViewModel{
    
    // Copie du tableau de données de MockData.wikis et accessibilité pour les silos Wiki, MapView et Profil
    var wikis: [Wiki] = MockData.wikis
    
    // ajouter func filtre
    // fonction d'ajout d'un wiki
    
    func addWiki(wiki: Wiki) {
        wikis.append(wiki)
    }
}
