//
//  User.swift
//  Imaginarium
//
//  Created by apprenant 108 on 28/07/2026.
//

import Foundation

enum PaysSelection :String, CaseIterable {
    var id: String { self.rawValue }
    case france = "France"
    case angleterre = "Angleterre"
    case espagne = "Espagne"
    case ecosse = "Écosse"
}

enum Role :CaseIterable {
    case admin
    case moderateur
    case user
}

struct User: Identifiable {
    let id: UUID
    var email: String
    var pseudo: String
    var password: String
    var profilPicture: URL
    var pays: PaysSelection // enum du pays du user
    var description: String
    let createdAt: Date
    let role: Role // ATTENTION enum!!
}
