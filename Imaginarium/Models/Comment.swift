import Foundation

/// Représente une réponse laissée par un utilisateur
/// sous une discussion communautaire.
struct Comment: Identifiable, PContent {
    let id = UUID()
    let creator: User
    let message: String
    let created_at: Date
}
