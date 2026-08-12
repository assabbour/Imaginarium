import Foundation

/// Représente une discussion créée dans l'espace communautaire.

enum TopicCategory :String,Hashable, CaseIterable {
    case Favoris
    case Trending
    case Decouvrir

}

struct Topic:Hashable, Identifiable {
    let id = UUID()
    /// Sujet de la discussion.
    var subject: String
    var title: String
    var creator: User
    var message: String?
    var category : TopicCategory
    /// Image facultative associée à la publication.
    var image: URL?
    /// Réponses des autres utilisateurs.
    var comments: [Comment]
}


