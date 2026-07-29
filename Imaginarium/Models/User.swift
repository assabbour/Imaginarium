//
//  User.swift
//  Imaginarium
//
//  Created by apprenant 108 on 28/07/2026.
//

import Foundation

enum PaysSelection :String, CaseIterable {
    var id: String { self.rawValue }
    case France = "France"
    case Angleterre = "Angleterre"
    case Espagne = "Espagne"
    case Ecosse = "Écosse"
}

enum Role :CaseIterable {
    case Admin
    case Moderateur
    case User
}

struct User: Identifiable {
    let id: UUID
    var email: String
    var pseudo: String
    var password: String
    var profilPicture: URL
    var pays: PaysSelection // enum du pays du user
    var description: String
    let created_at: Date
    let role: Role // ATTENTION enum!!
}
