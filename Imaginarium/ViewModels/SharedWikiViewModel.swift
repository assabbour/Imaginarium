//
//  SharedWikiViewModel.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 07/08/2026.
//

import Foundation

@Observable
class SharedWikiViewModel{
    
    // Copie du tableau de données de MockData.wikis et accessibilité pour les silos Wiki, MapView et Profil
    var wikis: [Wiki] = MockData.wikis
    
    // ajouter func filtre
    func filterWikis(_ searchText: String) -> [Wiki] {
        if searchText.isEmpty {
            return wikis
        } else {
            return wikis.filter { wiki in
                wiki.title.localizedCaseInsensitiveContains(searchText) ||
                wiki.subtitle.localizedCaseInsensitiveContains(searchText) ||
                wiki.tags.contains(where: { $0.localizedCaseInsensitiveContains(searchText) })
            }
        }
    }
    // fonction d'ajout d'un wiki
    func addWiki(wiki: Wiki) {
        wikis.append(wiki)
    }
    
    var selectedCategory: Category? = .any

    func filterByCategory(_ selectedCategory: Category) -> [Wiki] {
            if selectedCategory == selectedCategory {
                return wikis.filter { $0.category == selectedCategory }
            } else {
                return wikis
            }
        }
}
