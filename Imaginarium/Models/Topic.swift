import Foundation

/// Représente une discussion créée dans l'espace communautaire.

enum TopicCategory : CaseIterable {
    case Favoris
    case Trending
    case Decouvrir

}

struct Topic: Identifiable {
    let id = UUID()
    /// Sujet de la discussion.
    var subject: String
    let title: String
    var creator: User
    let message: String?
    var category : TopicCategory
    /// Image facultative associée à la publication.
    let image: URL?
    /// Réponses des autres utilisateurs.
    let comments: [Comment]
}


