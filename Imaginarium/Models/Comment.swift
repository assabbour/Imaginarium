import Foundation

/// Représente une réponse laissée par un utilisateur
/// sous une discussion communautaire.
struct Comment:Hashable, Identifiable {
    let id = UUID()
    let creator: User
    let message: String
    let createdAt: Date
}
