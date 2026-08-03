import SwiftUI

/// Composant de barre de recherche réutilisable.
struct SearchBarView: View {
    
    // MARK: - Propriétés
    
    /// Liaison (Binding) avec le texte de recherche géré par la vue parente.
    @Binding var text: String
    
    /// Texte d'indication affiché lorsque le champ est vide (par défaut "Search").
    var placeholder: String = "Search"
    
    // MARK: - Vue Principale
    
    var body: some View {
        HStack(spacing: 8) {
            // Icône de loupe à gauche
            Image(systemName: "magnifyingglass")
                .foregroundColor(.white.opacity(0.7))
            
            // Champ de saisie de texte
            TextField(placeholder, text: $text)
                .foregroundColor(.white)
                .autocorrectionDisabled() // Désactive l'autocorrection
                .textInputAutocapitalization(.never) // Évite les majuscules automatiques
            
            // Bouton "Effacer" (apparaît uniquement si du texte est saisi)
            if !text.isEmpty {
                Button(action: {
                    text = "" // Re-initialise le texte de recherche
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.white.opacity(0.6))
                }
            }
        }
        // Espacement interne du composant
        .padding(.vertical, 10)
        .padding(.horizontal, 14)
        
        // Fond sombre translucide
        .background(
            RoundedRectangle(cornerRadius: 20)
                .glassEffect(.regular) // filip -> glass effect instead of flat color
//                .fill(Color.white.opacity(0.08))
        )
        
        // Contour fin translucide (style identique au design Figma)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white.opacity(0.2), lineWidth: 1)
        )
    }
}

// MARK: - Aperçu Xcode

#Preview {
    ZStack {
        // Simulation d'un fond sombre pour tester la visibilité dans Xcode
        Color(red: 0.02, green: 0.22, blue: 0.28)
            .ignoresSafeArea()
        
        VStack(spacing: 20) {
            // Test 1 : Barre vide avec placeholder
            SearchBarView(text: .constant(""), placeholder: "Search")
            
            // Test 2 : Barre remplie (affiche la croix pour effacer)
            SearchBarView(text: .constant("Toy Story"), placeholder: "Search")
        }
        .padding()
    }
}
