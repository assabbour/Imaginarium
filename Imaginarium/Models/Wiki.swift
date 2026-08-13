import Foundation
import MapKit

/// Représente une fiche détaillée du Wiki.
/// Elle est affichée lorsque l'utilisateur sélectionne un élément.

enum Category : String, CaseIterable, Hashable{
    case films
    case series
    case livre
    case folklore
    case all
}

struct Wiki: Identifiable, PContent, Hashable {
    let id = UUID()
    var title: String
    /// Petit texte affiché sous le nom.
    var subtitle: String
    var creator: User //UUID
    var imageName: URL
    var description: String
    /// Images supplémentaires pour l'onglet média.

    var category : Category
    let createdAt: Date
    var tags : [String]
    var location : CLLocation
    
    // Recup des segments pour le picker, avec des valeurs nil (default) car pas obligatoire pour créer un wiki
    var homeSegment: HomeSegment = HomeSegment(elements: [])
    var gallerySegment: GallerySegment? = nil
    var descriptionSegment: DescriptionSegment? = nil
    var linksSegment: LinksSegment? = nil
}


