//
//  WikiSegments.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 03/08/2026.
//

import Foundation

enum WikiSegments: CaseIterable, Identifiable, Hashable { //caseiterable permet de gerer et de generer une liste de tout les cas de l'enum et son affichage dynamique
    
    case home
    case gallery
    case description
    case links
/*Possibilité d'ecrire: "case home, gallery, description, links" car les ceses sont simples.*/
    
    var id: Self { self }
    
    var label: String {
        switch self {
        case .home: "Home"
        case .gallery: "Gallery"
        case .description: "Description"
        case .links: "Links"
        }
    }
}
