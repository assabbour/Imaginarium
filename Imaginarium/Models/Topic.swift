import Foundation

/// Représente une discussion créée dans l'espace communautaire.
struct Discussion: Identifiable {
    let id = UUID()
    /// Sujet de la discussion.
    let title: String
    var creator: User
    let message: String
    /// Image facultative associée à la publication.
    let imageName: String?
    /// Réponses des autres utilisateurs.
    let comments: [Comment]
}
