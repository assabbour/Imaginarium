//
//  SharedMapAnnotationViewModel.swift
//  Imaginarium
//
//  Created by apprenant102 on 05/08/2026.
//

import Foundation
import MapKit

// Shared for the map annotation and the corresponding map sheet
@Observable
class SharedMapAnnotationViewModel {
    let wiki: Wiki
    let title: String
    let description: String
    let annotationImg: URL?
    let mediaImgs: [URL]?
    let coordinates: CLLocation?
    
    init(_ wiki: Wiki) {
        self.wiki = wiki
        self.title = wiki.title
        self.description = wiki.description
        self.annotationImg = wiki.imageName
        self.mediaImgs = wiki.mediaImages
        self.coordinates = wiki.location
    }
    
    /*
    function ideas for later
     make the images animated automatically in a carosell
     only show 3 images from the media.
     read aloud the description when i click on a button
     bookmark ?
     */
    
}
