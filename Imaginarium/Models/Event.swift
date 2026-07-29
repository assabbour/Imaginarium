import Foundation

/// Représente un événement créé par la communauté.
struct Event: Identifiable, PContent {
    var creator: User
    let created_at: Date
    let id = UUID()
    let title: String
    var description: String
    let location: String?
    let imageName: String?
}
