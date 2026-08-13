import SwiftUI

@Observable
class WikiDetailViewModel {
    /// Onglet actuellement sélectionné
    var selectedTab: String = "Home"
    
    /// Les 5 onglets basés sur tes fichiers de segments
    let tabs = ["Home", "Description", "Gallery", "Links"]
}
