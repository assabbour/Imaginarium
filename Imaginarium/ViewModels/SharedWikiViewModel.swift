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
    
    // Here I filter by the string in the search bar; on a list that is already filtered based on category
    func filterWikis(_ searchText: String, selected: Category) -> [Wiki] {
        if searchText.isEmpty {
            return filterByCategory(selected: selectedCategory)
        } else {
            return filterByCategory(selected: selectedCategory).filter { wiki in
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
    // This value is stocked in the view Model and changed and passed on as needed in the different views
    var selectedCategory: Category = .all

    // Here we filter the wikis based on category before passing them to the search filter
    func filterByCategory(selected: Category) -> [Wiki] {
        if selected == .all {
                return wikis
            } else {
                return wikis.filter { wiki in
                    wiki.category == selected }
            }
        }
}
