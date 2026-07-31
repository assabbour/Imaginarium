import Foundation

/// Représente une discussion créée dans l'espace communautaire.
struct Topic: Identifiable {
    let id = UUID()
    /// Sujet de la discussion.
    var subject: String
    let title: String
    var creator: User
    let message: String?
    /// Image facultative associée à la publication.
    let image: URL?
    /// Réponses des autres utilisateurs.
    let comments: [Comment]
}


