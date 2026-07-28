import Foundation
import MapKit

/// Représente une fiche détaillée du Wiki.
/// Elle est affichée lorsque l'utilisateur sélectionne un élément.
struct Wiki: Identifiable, PContent {
    let id = UUID()
    let title: String
    /// Petit texte affiché sous le nom.
    let subtitle: String
    let creator: User 
    let imageName: URL
    let description: String
    /// Images supplémentaires pour l'onglet média.
    let mediaImages: [URL]
    let created_at : Date?
    let tags : [String]
    let location : CLLocation
    
}
