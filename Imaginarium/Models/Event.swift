import Foundation

/// Représente un événement créé par la communauté.
struct Event: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let location: String?
    let imageName: String?
}
