//
//  WikiSegments.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 03/08/2026.
//

import Foundation

enum WikiSegments: CaseIterable, Identifiable {
    
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
