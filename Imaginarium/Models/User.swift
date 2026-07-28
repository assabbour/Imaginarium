//
//  User.swift
//  Imaginarium
//
//  Created by apprenant 108 on 28/07/2026.
//

import Foundation

struct User: Identifiable {
    let id: UUID
    var email: String
    var pseudo: String
    var password: String
    var profilPicture: URL
    var pays: String // enum du pays du user
    var description: String
    let created_at: Date
    let role: [String] // ATTENTION enum!!
}
