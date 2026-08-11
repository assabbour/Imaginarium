//
//  GallerySegment.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 03/08/2026.
//

import Foundation

struct ImageGallerySegment: Identifiable, Hashable { // pour les identifier pour les supprimer grace a l'id
    let id: UUID = UUID()
    var image: String
}

struct GallerySegment: Hashable {
    var gallery: [ImageGallerySegment]
}
