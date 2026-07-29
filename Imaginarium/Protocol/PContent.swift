//
//  PContent.swift
//  Imaginarium
//
//  Created by apprenant 108 on 28/07/2026.
//

import Foundation

protocol PContent {
    var creator: User { get set }
    var description : String { get set }
    var created_at : Date { get }
}
