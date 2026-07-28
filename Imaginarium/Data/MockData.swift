import Foundation

/// Les données statiques utilisées
/// pour remplir l'application sans backend.

struct MockData {

    // =====================================================
    // MARK: - WIKI
    // =====================================================

    /// Éléments affichés dans la liste principale du Wiki.
    static let wikiItems: [WikiItem] = [
        WikiItem(
            name: "Dragon",
            subtitle: "Créature légendaire",
            imageName: "dragon"
        ),

        WikiItem(
            name: "Toy Story",
            subtitle: "Univers Pixar",
            imageName: "toyStory"
        ),

        WikiItem(
            name: "Monster Hunter",
            subtitle: "Monde de chasseurs",
            imageName: "monsterHunter"
        ),

        WikiItem(
            name: "Star Wars",
            subtitle: "Galaxie lointaine",
            imageName: "starWars"
        ),

        WikiItem(
            name: "Ghost in the Shell",
            subtitle: "Univers cyberpunk",
            imageName: "ghostInTheShell"
        ),

        WikiItem(
            name: "Harry Potter",
            subtitle: "Monde des sorciers",
            imageName: "harryPotter"
        ),

        WikiItem(
            name: "The Legend of Zelda",
            subtitle: "Royaume d'Hyrule",
            imageName: "zelda"
        ),

        WikiItem(
            name: "One Piece",
            subtitle: "Univers pirate",
            imageName: "onePiece"
        )
    ]


    // =====================================================
    // MARK: - ARTICLES
    // =====================================================

    /// Fiches détaillées consultables depuis le Wiki.
    static let articles: [Article] = [

        Article(
            title: "Dragon",
            creator: "Mythologie",
            imageName: "dragon",
            type: "Créature",
            habitat: "Montagnes",
            diet: "Carnivore",
            dangerLevel: "Élevé",
            description:
                "Le dragon est une créature légendaire présente dans de nombreux récits. "
                + "Il est souvent représenté comme un animal gigantesque capable de voler "
                + "et parfois de cracher du feu.",
            mediaImages: [
                "dragon",
                "dragonMedia1",
                "dragonMedia2"
            ]
        ),

        Article(
            title: "Toy Story",
            creator: "Pixar",
            imageName: "toyStory",
            type: "Film",
            habitat: nil,
            diet: nil,
            dangerLevel: nil,
            description:
                "Toy Story raconte les aventures de jouets qui prennent vie lorsque "
                + "les humains ne les regardent pas. Woody et Buzz l'Éclair sont "
                + "au centre de cet univers.",
            mediaImages: [
                "toyStory",
                "toyStoryMedia1",
                "toyStoryMedia2"
            ]
        ),

        Article(
            title: "Monster Hunter",
            creator: "Capcom",
            imageName: "monsterHunter",
            type: "Jeu vidéo",
            habitat: "Divers environnements",
            diet: nil,
            dangerLevel: "Très élevé",
            description:
                "Monster Hunter présente un monde peuplé de créatures gigantesques. "
                + "Les chasseurs explorent différents territoires afin de découvrir, "
                + "étudier et affronter ces monstres.",
            mediaImages: [
                "monsterHunter",
                "monsterHunterMedia1",
                "monsterHunterMedia2"
            ]
        ),

        Article(
            title: "Star Wars",
            creator: "George Lucas",
            imageName: "starWars",
            type: "Univers de science-fiction",
            habitat: "Galaxie",
            diet: nil,
            dangerLevel: "Variable",
            description:
                "Star Wars se déroule dans une galaxie composée de nombreuses planètes, "
                + "civilisations et espèces. La Force joue un rôle central dans cet univers.",
            mediaImages: [
                "starWars",
                "starWarsMedia1",
                "starWarsMedia2"
            ]
        ),

        Article(
            title: "Ghost in the Shell",
            creator: "Masamune Shirow",
            imageName: "ghostInTheShell",
            type: "Manga / Cyberpunk",
            habitat: "Ville futuriste",
            diet: nil,
            dangerLevel: "Moyen",
            description:
                "Ghost in the Shell explore une société futuriste dans laquelle "
                + "les humains peuvent améliorer leur corps avec des technologies cybernétiques.",
            mediaImages: [
                "ghostInTheShell",
                "ghostMedia1"
            ]
        ),

        Article(
            title: "Harry Potter",
            creator: "J. K. Rowling",
            imageName: "harryPotter",
            type: "Fantasy",
            habitat: "Monde magique",
            diet: nil,
            dangerLevel: "Variable",
            description:
                "L'univers de Harry Potter présente une société secrète de sorciers "
                + "vivant parallèlement au monde ordinaire.",
            mediaImages: [
                "harryPotter",
                "hogwarts"
            ]
        ),

        Article(
            title: "The Legend of Zelda",
            creator: "Nintendo",
            imageName: "zelda",
            type: "Jeu vidéo",
            habitat: "Hyrule",
            diet: nil,
            dangerLevel: "Élevé",
            description:
                "The Legend of Zelda se déroule principalement dans le royaume d'Hyrule. "
                + "Link y affronte différentes menaces afin de protéger le royaume.",
            mediaImages: [
                "zelda",
                "hyrule"
            ]
        ),

        Article(
            title: "One Piece",
            creator: "Eiichiro Oda",
            imageName: "onePiece",
            type: "Manga",
            habitat: "Océans",
            diet: nil,
            dangerLevel: "Élevé",
            description:
                "One Piece raconte le voyage de Monkey D. Luffy et de son équipage "
                + "à travers un monde composé d'îles et d'océans extraordinaires.",
            mediaImages: [
                "onePiece",
                "onePieceMedia1"
            ]
        )
    ]


    // =====================================================
    // MARK: - CARTE
    // =====================================================

    /// Lieux réels ou imaginaires affichés sur la carte.
    static let locations: [ImaginaryLocation] = [

        ImaginaryLocation(
            title: "Toy Story",
            latitude: 37.7749,
            longitude: -122.4194,
            imageName: "toyStory",
            description:
                "Lieu associé à l'univers de Toy Story et à Pixar."
        ),

        ImaginaryLocation(
            title: "Star Wars",
            latitude: 36.7783,
            longitude: -119.4179,
            imageName: "starWars",
            description:
                "Lieu associé à plusieurs inspirations et productions de Star Wars."
        ),

        ImaginaryLocation(
            title: "Harry Potter",
            latitude: 51.5074,
            longitude: -0.1278,
            imageName: "harryPotter",
            description:
                "Londres est liée à de nombreux lieux emblématiques de l'univers Harry Potter."
        ),

        ImaginaryLocation(
            title: "Ghost in the Shell",
            latitude: 35.6762,
            longitude: 139.6503,
            imageName: "ghostInTheShell",
            description:
                "Tokyo correspond à l'ambiance urbaine futuriste de Ghost in the Shell."
        ),

        ImaginaryLocation(
            title: "One Piece",
            latitude: 35.6895,
            longitude: 139.6917,
            imageName: "onePiece",
            description:
                "Lieu lié à la création et à la culture autour de One Piece."
        )
    ]


    // =====================================================
    // MARK: - DISCUSSIONS
    // =====================================================

    /// Discussions visibles dans l'espace communauté.
    static let discussions: [Discussion] = [

        Discussion(
            title: "Quel est votre monstre préféré ?",
            author: "Alex",
            message:
                "Je viens de commencer Monster Hunter. "
                + "Quel monstre vous semble le plus impressionnant ?",
            imageName: "monsterHunter",
            comments: [
                Comment(
                    author: "Sarah",
                    message: "Pour moi c'est Rathalos."
                ),
                Comment(
                    author: "Lucas",
                    message: "J'aime beaucoup Zinogre."
                ),
                Comment(
                    author: "Emma",
                    message: "Fatalis reste incroyable."
                )
            ]
        ),

        Discussion(
            title: "Votre personnage préféré de Toy Story ?",
            author: "Maya",
            message:
                "Je préfère Woody, mais Buzz est clairement le plus drôle.",
            imageName: "toyStory",
            comments: [
                Comment(
                    author: "Noah",
                    message: "Buzz sans hésiter."
                ),
                Comment(
                    author: "Lina",
                    message: "Jessie pour moi."
                )
            ]
        ),

        Discussion(
            title: "Quelle planète Star Wars visiter ?",
            author: "Thomas",
            message:
                "Si vous pouviez visiter une seule planète de Star Wars, laquelle choisiriez-vous ?",
            imageName: "starWars",
            comments: [
                Comment(
                    author: "Julie",
                    message: "Naboo."
                ),
                Comment(
                    author: "Adam",
                    message: "Coruscant pour voir la ville."
                )
            ]
        ),

        Discussion(
            title: "Le meilleur Zelda ?",
            author: "Nina",
            message:
                "Breath of the Wild ou Tears of the Kingdom ?",
            imageName: "zelda",
            comments: [
                Comment(
                    author: "Sam",
                    message: "Breath of the Wild reste mon préféré."
                )
            ]
        )
    ]


    // =====================================================
    // MARK: - EVENEMENTS
    // =====================================================

    /// Événements proposés par la communauté.
    static let events: [CommunityEvent] = [

        CommunityEvent(
            title: "Soirée découverte Star Wars",
            description:
                "Discussion autour des lieux et personnages emblématiques de Star Wars.",
            location: "Marseille",
            imageName: "starWars"
        ),

        CommunityEvent(
            title: "Rencontre fans de Toy Story",
            description:
                "Échange autour des films Toy Story et de l'univers Pixar.",
            location: "Paris",
            imageName: "toyStory"
        ),

        CommunityEvent(
            title: "Découverte de Monster Hunter",
            description:
                "Présentation des créatures et des différents territoires du jeu.",
            location: "Lyon",
            imageName: "monsterHunter"
        ),

        CommunityEvent(
            title: "Voyage dans l'univers Zelda",
            description:
                "Discussion communautaire consacrée à Hyrule, Link et Zelda.",
            location: "Bordeaux",
            imageName: "zelda"
        )
    ]
}
