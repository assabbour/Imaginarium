//
//  WikiDraft.swift
//  Imaginarium
//
//  Created by Apprenant 72 on 05/08/2026.
//

import Foundation
import CoreLocation // pour recup les coordonnées gps

@Observable

class WikiCreationViewModel {
    
// Propriétés Wiki
    var wiki: Wiki = Wiki(
        title: "",
        subtitle: "",
        creator: MockData.alex, /*MockData.alex.id ou le pseudo*/
        imageName: URL(string: "https://votre-image.com/test.jpg")!,
        description: "",
        category: .films,
        createdAt: Date(),
        tags: [],
        location: CLLocation(latitude: 0.0, longitude: 0.0),
        homeSegment: HomeSegment(elements: []),
        gallerySegment: GallerySegment(gallery: []),
        descriptionSegment: DescriptionSegment(sections: []),
        linksSegment: LinksSegment(links: [])
    )
    
    var tabs: [String] = ["Home", "Gallery", "Description", "Links"]
    var selectedTab: String = "Home"
    
    
//------------------- Validation du wiki ------------------------
    var errorMessages: [String] = [] // recup les erreur pour afficher les messages a la fin de la fonction
    var latitudeText: String = ""
    var longitudeText: String = ""
    var imgTextToURL: String = ""

    func validateWiki() -> Bool {
        errorMessages = []
        var latitude: Double? = nil
        var longitude: Double? = nil
        
        if wiki.title.trimmingCharacters(in: .whitespaces).isEmpty {
            errorMessages.append("Le titre est obligatoire")
        }
        
        if wiki.subtitle.trimmingCharacters(in: .whitespaces).isEmpty {
            errorMessages.append("Le sous-titre est obligatoire")
        }
        
        if wiki.description.trimmingCharacters(in: .whitespaces).isEmpty {
            errorMessages.append("La description est obligatoire")
        }
        
        if wiki.tags.isEmpty {
            errorMessages.append("Ajoute au moins un tag")
        }
        
        if let lat = Double(latitudeText) { // transformer le textfield en Double pour CCLocation
            latitude = lat
        } else {
            errorMessages.append("La latitude n'est pas un nombre valide")
        }
        
        if let long = Double(longitudeText) {// transformer le textfield en Double pour CCLocation
            longitude = long
        } else {
            errorMessages.append("La longitude n'est pas un nombre valide")
        }
        
        if let lat = latitude, let long = longitude {
            if !(-90...90).contains(lat) || !(-180...180).contains(long) {
                errorMessages.append("Coordonnées GPS hors limites")
            }
        }
        
        var imageURL: URL? = nil
        if let url = URL(string: imgTextToURL), !imgTextToURL.isEmpty {
            imageURL = url
        } else {
            errorMessages.append("L'URL de l'image n'est pas valide")
        }
        
        if wiki.homeSegment.elements.isEmpty {
            errorMessages.append("Ajoute au moins un élément à la section Home")
        } else {
            for element in wiki.homeSegment.elements {
                if element.elementName.trimmingCharacters(in: .whitespaces).isEmpty ||
                   element.description.trimmingCharacters(in: .whitespaces).isEmpty {
                    errorMessages.append("Chaque élément Home doit avoir un nom et une description")
                    break  // stop la boucle a la premiere erreur (contrairement a un return qui retournerai le meme message pour chaque erreur
                }
            }
        }
        
        guard errorMessages.isEmpty else {
            return false
        }
        
        wiki.location = CLLocation(latitude: latitude!, longitude: longitude!)
        wiki.imageName = imageURL!
        return true
    }
    
    
    func createWiki(in sharedViewModel: SharedWikiViewModel) -> Bool { // in permet de donner un nom en interne a la fonction a SharedwikiViewModel, convention Swift surtout dans l'API Apple
           guard validateWiki() else {
               return false
           }
           
        sharedViewModel.addWiki(wiki: wiki)
           return true
       }
    
    
//------------------- Validation de HomeSegment (pas optionel donc pas de "if nil" pour celui ci ------------------------
    
    func addHomeElement(name: String, description: String) {
        let trimmedName = name.trimmingCharacters(in: .whitespaces)
        let trimmedDescription = description.trimmingCharacters(in: .whitespaces)
        guard !trimmedName.isEmpty, !trimmedDescription.isEmpty else { return }
        
        let element = Element(elementName: trimmedName, description: trimmedDescription)
        wiki.homeSegment.elements.append(element)
    }
    
    
//------------------- Validation de DescriptionSegment -----------------------
    func addDescriptionSection(title: String, content: String) {
        let trimmedTitle = title.trimmingCharacters(in: .whitespaces)
        let trimmedContent = content.trimmingCharacters(in: .whitespaces)
        guard !trimmedTitle.isEmpty, !trimmedContent.isEmpty else { return }
        
        let section = TextSection(title: trimmedTitle, contents: trimmedContent)
        
        if wiki.descriptionSegment == nil {
            wiki.descriptionSegment = DescriptionSegment(sections: [])
        }
        wiki.descriptionSegment?.sections.append(section)
    }
    
    
//------------------- Validation de GallerySegment -----------------------
    
    func addGalleryImage(urlText: String) {
        let trimmed = urlText.trimmingCharacters(in: .whitespaces)
        guard !trimmed.isEmpty else { return }
        
        let image = ImageGallerySegment(image: trimmed)
        
        if wiki.gallerySegment == nil {
            wiki.gallerySegment = GallerySegment(gallery: [])
        }
        wiki.gallerySegment?.gallery.append(image)
    }
    
    
//------------------- Validation de LinksSegment -----------------------
    
    func addLink(to linkedWiki: Wiki) {
        let link = LinkItem(
            linkedTitle: linkedWiki.title,
            linkedWikiImage: linkedWiki.imageName,
            linkedWikiID: linkedWiki.id
        )
        
        if wiki.linksSegment == nil {
            wiki.linksSegment = LinksSegment(links: [])
        }
        wiki.linksSegment?.links.append(link)
    }
}
