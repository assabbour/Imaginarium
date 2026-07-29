import Foundation
import MapKit

/// Données statiques utilisées pour remplir l'application
/// tant que nous n'avons pas encore de backend.
struct MockData {

    // =====================================================
    // MARK: - USERS
    // =====================================================

    /// Utilisateurs réutilisés dans toute l'application.
    /// Un User peut créer un Wiki, une discussion,
    /// un commentaire ou un événement.

    static let alex = User(
        id: UUID(),
        email: "alex@imaginarium.app",
        pseudo: "Alex",
        password: "password",
        profilPicture: URL(string: "https://i.pravatar.cc/300?img=11")!,
        pays: "France",
        description: "Passionné de jeux vidéo et de mondes fantastiques.",
        created_at: Date(timeIntervalSince1970: 1750000000),
        role: ["user"]
    )

    static let maya = User(
        id: UUID(),
        email: "maya@imaginarium.app",
        pseudo: "Maya",
        password: "password",
        profilPicture: URL(string: "https://i.pravatar.cc/300?img=32")!,
        pays: "France",
        description: "Fan de cinéma, Pixar et animation.",
        created_at: Date(timeIntervalSince1970: 1750500000),
        role: ["user"]
    )

    static let lucas = User(
        id: UUID(),
        email: "lucas@imaginarium.app",
        pseudo: "Lucas",
        password: "password",
        profilPicture: URL(string: "https://i.pravatar.cc/300?img=12")!,
        pays: "Belgique",
        description: "Explorateur de mondes fantastiques.",
        created_at: Date(timeIntervalSince1970: 1751000000),
        role: ["user"]
    )

    static let sarah = User(
        id: UUID(),
        email: "sarah@imaginarium.app",
        pseudo: "Sarah",
        password: "password",
        profilPicture: URL(string: "https://i.pravatar.cc/300?img=47")!,
        pays: "France",
        description: "Passionnée de fantasy et de créatures mythologiques.",
        created_at: Date(timeIntervalSince1970: 1751500000),
        role: ["user"]
    )

    static let thomas = User(
        id: UUID(),
        email: "thomas@imaginarium.app",
        pseudo: "Thomas",
        password: "password",
        profilPicture: URL(string: "https://i.pravatar.cc/300?img=15")!,
        pays: "Suisse",
        description: "Fan de science-fiction et de Star Wars.",
        created_at: Date(timeIntervalSince1970: 1752000000),
        role: ["user"]
    )

    static let nina = User(
        id: UUID(),
        email: "nina@imaginarium.app",
        pseudo: "Nina",
        password: "password",
        profilPicture: URL(string: "https://i.pravatar.cc/300?img=45")!,
        pays: "France",
        description: "Joueuse Nintendo et grande fan de Zelda.",
        created_at: Date(timeIntervalSince1970: 1752500000),
        role: ["user"]
    )

    /// Liste utilisée plus tard pour les profils.
    static let users: [User] = [
        alex,
        maya,
        lucas,
        sarah,
        thomas,
        nina
    ]


    // =====================================================
    // MARK: - WIKI
    // =====================================================

    /// Les fiches principales visibles dans le Wiki.
    ///
    /// Elles contiennent aussi leurs coordonnées,
    /// donc les mêmes objets pourront servir sur la carte.

    static let wikis: [Wiki] = [

        Wiki(
            title: "Dragon",
            subtitle: "Créature légendaire",
            creator: sarah,
            imageName: URL(
                string: "https://images.unsplash.com/photo-1577493340887-b7bfff550145"
            )!,
            description:
                "Le dragon est une créature légendaire présente dans de nombreuses mythologies. "
                + "Il est généralement représenté comme une créature gigantesque capable de voler "
                + "et parfois de cracher du feu.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=1")!,
                URL(string: "https://picsum.photos/600/400?random=2")!,
                URL(string: "https://picsum.photos/600/400?random=3")!
            ],
            created_at: Date(timeIntervalSince1970: 1753000000),
            tags: [
                "Créature",
                "Fantasy",
                "Mythologie"
            ],
            location: CLLocation(
                latitude: 45.8326,
                longitude: 6.8652
            )
        ),

        Wiki(
            title: "Toy Story",
            subtitle: "Univers Pixar",
            creator: maya,
            imageName: URL(
                string: "https://picsum.photos/600/400?random=10"
            )!,
            description:
                "Toy Story raconte les aventures de jouets qui prennent vie lorsque "
                + "les humains ne les regardent pas. Woody et Buzz l'Éclair sont "
                + "les personnages emblématiques de cet univers.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=11")!,
                URL(string: "https://picsum.photos/600/400?random=12")!,
                URL(string: "https://picsum.photos/600/400?random=13")!
            ],
            created_at: Date(timeIntervalSince1970: 1753100000),
            tags: [
                "Pixar",
                "Animation",
                "Cinéma"
            ],
            location: CLLocation(
                latitude: 37.8324,
                longitude: -122.2851
            )
        ),

        Wiki(
            title: "Monster Hunter",
            subtitle: "Monde de chasseurs",
            creator: alex,
            imageName: URL(
                string: "https://picsum.photos/600/400?random=20"
            )!,
            description:
                "Monster Hunter présente un monde peuplé de gigantesques créatures. "
                + "Les chasseurs parcourent différents environnements afin d'étudier "
                + "et d'affronter ces monstres.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=21")!,
                URL(string: "https://picsum.photos/600/400?random=22")!,
                URL(string: "https://picsum.photos/600/400?random=23")!
            ],
            created_at: Date(timeIntervalSince1970: 1753200000),
            tags: [
                "Jeu vidéo",
                "Monstre",
                "Aventure"
            ],
            location: CLLocation(
                latitude: 34.6937,
                longitude: 135.5023
            )
        ),

        Wiki(
            title: "Star Wars",
            subtitle: "Une galaxie lointaine",
            creator: thomas,
            imageName: URL(
                string: "https://picsum.photos/600/400?random=30"
            )!,
            description:
                "Star Wars se déroule dans une galaxie composée de nombreuses planètes, "
                + "civilisations et espèces. Jedi, Sith et Force occupent une place "
                + "centrale dans cet univers.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=31")!,
                URL(string: "https://picsum.photos/600/400?random=32")!,
                URL(string: "https://picsum.photos/600/400?random=33")!
            ],
            created_at: Date(timeIntervalSince1970: 1753300000),
            tags: [
                "Science-fiction",
                "Cinéma",
                "Espace"
            ],
            location: CLLocation(
                latitude: 36.4915,
                longitude: -117.2283
            )
        ),

        Wiki(
            title: "Ghost in the Shell",
            subtitle: "Univers cyberpunk",
            creator: lucas,
            imageName: URL(
                string: "https://picsum.photos/600/400?random=40"
            )!,
            description:
                "Ghost in the Shell imagine une société futuriste dans laquelle "
                + "les humains et les technologies cybernétiques sont profondément liés.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=41")!,
                URL(string: "https://picsum.photos/600/400?random=42")!
            ],
            created_at: Date(timeIntervalSince1970: 1753400000),
            tags: [
                "Cyberpunk",
                "Manga",
                "Science-fiction"
            ],
            location: CLLocation(
                latitude: 35.6762,
                longitude: 139.6503
            )
        ),

        Wiki(
            title: "Harry Potter",
            subtitle: "Le monde des sorciers",
            creator: sarah,
            imageName: URL(
                string: "https://picsum.photos/600/400?random=50"
            )!,
            description:
                "Harry Potter présente un monde magique caché au sein du monde réel, "
                + "peuplé de sorciers, de créatures fantastiques et de nombreux lieux mystérieux.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=51")!,
                URL(string: "https://picsum.photos/600/400?random=52")!,
                URL(string: "https://picsum.photos/600/400?random=53")!
            ],
            created_at: Date(timeIntervalSince1970: 1753500000),
            tags: [
                "Fantasy",
                "Magie",
                "Cinéma"
            ],
            location: CLLocation(
                latitude: 51.5319,
                longitude: -0.1246
            )
        ),

        Wiki(
            title: "The Legend of Zelda",
            subtitle: "Royaume d'Hyrule",
            creator: nina,
            imageName: URL(
                string: "https://picsum.photos/600/400?random=60"
            )!,
            description:
                "The Legend of Zelda raconte les aventures de Link à travers le royaume "
                + "d'Hyrule, un monde rempli de temples, de créatures et de légendes.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=61")!,
                URL(string: "https://picsum.photos/600/400?random=62")!,
                URL(string: "https://picsum.photos/600/400?random=63")!
            ],
            created_at: Date(timeIntervalSince1970: 1753600000),
            tags: [
                "Nintendo",
                "Jeu vidéo",
                "Fantasy"
            ],
            location: CLLocation(
                latitude: 35.0116,
                longitude: 135.7681
            )
        ),

        Wiki(
            title: "One Piece",
            subtitle: "Le monde des pirates",
            creator: lucas,
            imageName: URL(
                string: "https://picsum.photos/600/400?random=70"
            )!,
            description:
                "One Piece raconte le voyage de Monkey D. Luffy et de son équipage "
                + "à travers des océans remplis d'îles extraordinaires et de mystères.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=71")!,
                URL(string: "https://picsum.photos/600/400?random=72")!,
                URL(string: "https://picsum.photos/600/400?random=73")!
            ],
            created_at: Date(timeIntervalSince1970: 1753700000),
            tags: [
                "Manga",
                "Pirate",
                "Aventure"
            ],
            location: CLLocation(
                latitude: 35.6895,
                longitude: 139.6917
            )
        )
    ]


    // =====================================================
    // MARK: - DISCUSSIONS
    // =====================================================

    /// Discussions de l'écran Communauté.
    ///
    /// Les créateurs sont les mêmes User que ceux
    /// définis plus haut.

    static let discussions: [Discussion] = [

        Discussion(
            title: "Quel est votre monstre préféré ?",
            creator: alex,
            message:
                "Je viens de commencer Monster Hunter. "
                + "Quel monstre vous semble le plus impressionnant ?",
            imageName: "monsterHunter",
            comments: [

                Comment(
                    creator: sarah,
                    message: "Pour moi c'est Rathalos.",
                    created_at: Date(timeIntervalSince1970: 1754000000)
                ),

                Comment(
                    creator: lucas,
                    message: "J'aime beaucoup Zinogre.",
                    created_at: Date(timeIntervalSince1970: 1754010000)
                ),

                Comment(
                    creator: maya,
                    message: "Fatalis reste incroyable.",
                    created_at: Date(timeIntervalSince1970: 1754020000)
                )
            ]
        ),

        Discussion(
            title: "Votre personnage préféré de Toy Story ?",
            creator: maya,
            message:
                "Je préfère Woody mais Buzz reste probablement "
                + "le personnage qui me fait le plus rire.",
            imageName: "toyStory",
            comments: [

                Comment(
                    creator: alex,
                    message: "Buzz sans hésiter !",
                    created_at: Date(timeIntervalSince1970: 1754100000)
                ),

                Comment(
                    creator: nina,
                    message: "Jessie pour moi.",
                    created_at: Date(timeIntervalSince1970: 1754110000)
                )
            ]
        ),

        Discussion(
            title: "Quelle planète Star Wars visiter ?",
            creator: thomas,
            message:
                "Si vous pouviez visiter une seule planète "
                + "de Star Wars, laquelle choisiriez-vous ?",
            imageName: "starWars",
            comments: [

                Comment(
                    creator: sarah,
                    message: "Naboo sans hésiter.",
                    created_at: Date(timeIntervalSince1970: 1754200000)
                ),

                Comment(
                    creator: lucas,
                    message: "Coruscant pour voir cette ville gigantesque.",
                    created_at: Date(timeIntervalSince1970: 1754210000)
                )
            ]
        ),

        Discussion(
            title: "Quel est le meilleur Zelda ?",
            creator: nina,
            message:
                "Breath of the Wild ou Tears of the Kingdom ? "
                + "Je n'arrive toujours pas à choisir.",
            imageName: "zelda",
            comments: [

                Comment(
                    creator: alex,
                    message: "Breath of the Wild reste mon préféré.",
                    created_at: Date(timeIntervalSince1970: 1754300000)
                ),

                Comment(
                    creator: maya,
                    message: "Tears of the Kingdom pour les constructions !",
                    created_at: Date(timeIntervalSince1970: 1754310000)
                )
            ]
        )
    ]


    // =====================================================
    // MARK: - EVENTS
    // =====================================================

    /// Événements créés par la communauté.

    static let events: [Event] = [

        Event(
            creator: thomas,
            created_at: Date(timeIntervalSince1970: 1755000000),
            title: "Soirée découverte Star Wars",
            description:
                "Une soirée consacrée aux personnages, "
                + "planètes et histoires de Star Wars.",
            location: "Marseille",
            imageName: "starWars"
        ),

        Event(
            creator: maya,
            created_at: Date(timeIntervalSince1970: 1755100000),
            title: "Rencontre fans de Toy Story",
            description:
                "Discussion et rencontre autour des films "
                + "Toy Story et de l'univers Pixar.",
            location: "Paris",
            imageName: "toyStory"
        ),

        Event(
            creator: alex,
            created_at: Date(timeIntervalSince1970: 1755200000),
            title: "Découverte Monster Hunter",
            description:
                "Présentation des monstres, des armes "
                + "et des différents territoires.",
            location: "Lyon",
            imageName: "monsterHunter"
        ),

        Event(
            creator: nina,
            created_at: Date(timeIntervalSince1970: 1755300000),
            title: "Voyage dans Hyrule",
            description:
                "Rencontre communautaire consacrée à Link, "
                + "Zelda et aux légendes du royaume d'Hyrule.",
            location: "Bordeaux",
            imageName: "zelda"
        )
    ]


    // =====================================================
    // MARK: - DONNÉES POUR LES ÉCRANS
    // =====================================================

    /// Contenu pouvant apparaître dans la partie Favoris.
    static let favoriteWikis: [Wiki] = [
        wikis[1], // Toy Story
        wikis[2], // Monster Hunter
        wikis[3]  // Star Wars
    ]

    /// Contenu pouvant apparaître dans Trending.
    static let trendingWikis: [Wiki] = [
        wikis[6], // Zelda
        wikis[7], // One Piece
        wikis[4]  // Ghost in the Shell
    ]
}
