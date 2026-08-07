import Foundation
import MapKit

/// Représente une fiche détaillée du Wiki.
/// Elle est affichée lorsque l'utilisateur sélectionne un élément.

enum Category : CaseIterable {
    case films
    case series
    case livre
    case folklore
}
 // A REVOIR: infos redondantes pour description
struct Wiki: Identifiable, PContent {
    let id: UUID = UUID()
    var title: String
    /// Petit texte affiché sous le nom.
    var subtitle: String
    var creator: User //UUID
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
}


