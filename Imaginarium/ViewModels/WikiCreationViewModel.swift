//
//  WikiDraft.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 05/08/2026.
//

import Foundation
import _LocationEssentials

@Observable

class WikiCreationViewModel {
    
// Propriétés Wiki
    var wiki: Wiki = Wiki(
        title: "",
        subtitle: "",
        creator: MockData.maya, /*MockData.alex.id ou le pseudo*/
        imageName: URL(string: "https://votre-image.com/test.jpg")!,
        description: "",
        mediaImages: [],
        category: .films,
        createdAt: Date(),
        tags: [],
        location: CLLocation(latitude: 0.0, longitude: 0.0),
//        homeSegment: HomeSegment(elements: []),
//        gallerySegment: GallerySegment(gallery: []),
//        descriptionSegment: DescriptionSegment(sections: []),
//        linksSegment: LinksSegment(links: [])
    )
    
    
    func validateWiki(wiki: Wiki) {
        
    }
}
