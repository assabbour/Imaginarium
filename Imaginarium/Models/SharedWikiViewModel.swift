import Foundation
import MapKit

/// Représente une fiche détaillée du Wiki.
/// Elle est affichée lorsque l'utilisateur sélectionne un élément.

//enum Category : CaseIterable {
//    case films
//    case series
//    case livre
//    case folklore
//}

@Observable
class SharedWikiViewModel: Identifiable, PContent {
    let id = UUID()
    var title: String
    /// Petit texte affiché sous le nom.
    var subtitle: String
    var creator: User
    var imageName: URL
    var description: String
    /// Images supplémentaires pour l'onglet média.
    var mediaImages: [URL]
    var category : Category
    let createdAt: Date
    var tags : [String]
    var location : CLLocation
    
    // Recup des segments pour le picker
//    var homeSegment: HomeSegment
//    var gallerySegment: GallerySegment
//    var descriptionSegment: DescriptionSegment
//    var linksSegment: LinksSegment
    
    init(title: String, subtitle: String, creator: User, imageName: URL, description: String, mediaImages: [URL], category: Category, createdAt: Date, tags: [String], location: CLLocation) {
        self.title = title
        self.subtitle = subtitle
        self.creator = creator
        self.imageName = imageName
        self.description = description
        self.mediaImages = mediaImages
        self.category = category
        self.createdAt = createdAt
        self.tags = tags
        self.location = location
    }
}


