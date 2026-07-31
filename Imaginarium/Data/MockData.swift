import Foundation
import MapKit

/// Données statiques
struct MockData {

    // =====================================================
    // MARK: - USERS
    // =====================================================

    static let alex = User(
        id: UUID(),
        email: "alex@imaginarium.app",
        pseudo: "Alex",
        password: "password",
        profilPicture: URL(string: "https://i.pravatar.cc/300?img=11")!,
        pays: .france,
        description: "Passionné de jeux vidéo et de mondes fantastiques.",
        createdAt: Date(),
        role: .user
    )

    static let maya = User(
        id: UUID(),
        email: "maya@imaginarium.app",
        pseudo: "Maya",
        password: "password",
        profilPicture: URL(string: "https://i.pravatar.cc/300?img=32")!,
        pays: .france,
        description: "Fan de cinéma, animation et univers imaginaires.",
        createdAt: Date(),
        role: .user
    )

    static let lucas = User(
        id: UUID(),
        email: "lucas@imaginarium.app",
        pseudo: "Lucas",
        password: "password",
        profilPicture: URL(string: "https://i.pravatar.cc/300?img=12")!,
        pays: .espagne,
        description: "Passionné de manga et de science-fiction.",
        createdAt: Date(),
        role: .user
    )

    static let sarah = User(
        id: UUID(),
        email: "sarah@imaginarium.app",
        pseudo: "Sarah",
        password: "password",
        profilPicture: URL(string: "https://i.pravatar.cc/300?img=47")!,
        pays: .angleterre,
        description: "Passionnée de fantasy et de folklore.",
        createdAt: Date(),
        role: .moderateur
    )

    static let thomas = User(
        id: UUID(),
        email: "thomas@imaginarium.app",
        pseudo: "Thomas",
        password: "password",
        profilPicture: URL(string: "https://i.pravatar.cc/300?img=15")!,
        pays: .france,
        description: "Fan de science-fiction et de Star Wars.",
        createdAt: Date(),
        role: .admin
    )

    static let nina = User(
        id: UUID(),
        email: "nina@imaginarium.app",
        pseudo: "Nina",
        password: "password",
        profilPicture: URL(string: "https://i.pravatar.cc/300?img=45")!,
        pays: .ecosse,
        description: "Passionnée de fantasy et de jeux Nintendo.",
        createdAt: Date(),
        role: .user
    )

    static let users: [User] = [
        alex,
        maya,
        lucas,
        sarah,
        thomas,
        nina
    ]

    // =====================================================
    // MARK: - WIKIS
    // =====================================================

    static let wikis: [Wiki] = [

        Wiki(
            title: "Toy Story",
            subtitle: "Univers Pixar",
            creator: maya,
            imageName: URL(string: "https://picsum.photos/600/400?random=10")!,
            description:
                "Toy Story raconte les aventures de jouets qui prennent vie lorsque les humains ne les regardent pas.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=11")!,
                URL(string: "https://picsum.photos/600/400?random=12")!,
                URL(string: "https://picsum.photos/600/400?random=13")!
            ],
            category: .films,
            createdAt: Date(),
            tags: [
                "Pixar",
                "Animation",
                "Aventure"
            ],
            location: CLLocation(
                latitude: 37.8324,
                longitude: -122.2851
            )
        ),

        Wiki(
            title: "Star Wars",
            subtitle: "Une galaxie lointaine",
            creator: thomas,
            imageName: URL(string: "https://picsum.photos/600/400?random=20")!,
            description:
                "Star Wars présente une galaxie peuplée de nombreuses civilisations, Jedi, Sith et créatures.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=21")!,
                URL(string: "https://picsum.photos/600/400?random=22")!
            ],
            category: .films,
            createdAt: Date(),
            tags: [
                "Science-fiction",
                "Espace",
                "Jedi"
            ],
            location: CLLocation(
                latitude: 36.4915,
                longitude: -117.2283
            )
        ),

        Wiki(
            title: "Harry Potter",
            subtitle: "Le monde des sorciers",
            creator: sarah,
            imageName: URL(string: "https://picsum.photos/600/400?random=30")!,
            description:
                "Harry Potter raconte l'histoire d'un jeune sorcier découvrant un monde magique caché.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=31")!,
                URL(string: "https://picsum.photos/600/400?random=32")!
            ],
            category: .livre,
            createdAt: Date(),
            tags: [
                "Magie",
                "Fantasy",
                "Sorciers"
            ],
            location: CLLocation(
                latitude: 51.5319,
                longitude: -0.1246
            )
        ),

        Wiki(
            title: "Dragon",
            subtitle: "Créature légendaire",
            creator: sarah,
            imageName: URL(string: "https://picsum.photos/600/400?random=40")!,
            description:
                "Le dragon est une créature mythologique présente dans de nombreuses cultures et légendes.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=41")!,
                URL(string: "https://picsum.photos/600/400?random=42")!
            ],
            category: .folklore,
            createdAt: Date(),
            tags: [
                "Dragon",
                "Mythologie",
                "Créature"
            ],
            location: CLLocation(
                latitude: 45.8326,
                longitude: 6.8652
            )
        ),

        Wiki(
            title: "Ghost in the Shell",
            subtitle: "Univers cyberpunk",
            creator: lucas,
            imageName: URL(string: "https://picsum.photos/600/400?random=50")!,
            description:
                "Ghost in the Shell explore une société futuriste où humains et technologies cybernétiques se confondent.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=51")!,
                URL(string: "https://picsum.photos/600/400?random=52")!
            ],
            category: .series,
            createdAt: Date(),
            tags: [
                "Cyberpunk",
                "Manga",
                "Technologie"
            ],
            location: CLLocation(
                latitude: 35.6762,
                longitude: 139.6503
            )
        ),

        Wiki(
            title: "One Piece",
            subtitle: "Le monde des pirates",
            creator: lucas,
            imageName: URL(string: "https://picsum.photos/600/400?random=60")!,
            description:
                "One Piece suit Luffy et son équipage dans leur voyage à travers des océans remplis d'îles extraordinaires.",
            mediaImages: [
                URL(string: "https://picsum.photos/600/400?random=61")!,
                URL(string: "https://picsum.photos/600/400?random=62")!
            ],
            category: .series,
            createdAt: Date(),
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

    static let topics: [Topic] = [

        Topic(
            subject: "Toy Story",
            title: "Votre personnage préféré de Toy Story ?",
            creator: maya,
            message: "Je préfère Woody, mais Buzz reste incroyable.",
            image: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2qj3yKgSmlFwjOC3VNBSzKpofVb43UitFcIDrKIZAlg&s=10"),
            comments: [
                Comment(
                    creator: alex,
                    message: "Buzz sans hésiter.",
                    createdAt: Date()
                ),
                Comment(
                    creator: nina,
                    message: "Jessie pour moi.",
                    createdAt: Date()
                )
            ]
        ),

        Topic(
            subject: "Toy Story",
            title: "Quelle planète Star Wars visiter ?",
            creator: thomas,
            message: "Si vous pouviez visiter une planète de Star Wars, laquelle choisiriez-vous ?",
            image: URL(string: "https://www.google.com/imgres?q=rey%20dau&imgurl=https%3A%2F%2Fpreview.redd.it%2Frey-dau-got-done-so-unbelievably-dirty-v0-ot8iuaam5vte1.jpeg%3Fwidth%3D640%26crop%3Dsmart%26auto%3Dwebp%26s%3D4c539f49a5db374bf8a85fa10e9bcb9c7814c8bd&imgrefurl=https%3A%2F%2Fwww.reddit.com%2Fr%2FMonsterHunter%2Fcomments%2F1jvf32l%2Frey_dau_got_done_so_unbelievably_dirty%2F%3Ftl%3Dfr&docid=rXLcuz74WUUXdM&tbnid=ui5dYGwll68dxM&vet=12ahUKEwjFvqjLrvyVAxUBTqQEHaDbAd8QnPAOegUI2gEQAA..i&w=640&h=904&hcb=2&ved=2ahUKEwjFvqjLrvyVAxUBTqQEHaDbAd8QnPAOegUI2gEQAA"),
            comments: [
                Comment(
                    creator: sarah,
                    message: "Naboo.",
                    createdAt: Date()
                ),
                Comment(
                    creator: lucas,
                    message: "Coruscant.",
                    createdAt: Date()
                )
            ]
        ),

        Topic(
            subject: "Folklore",
            title: "Vos créatures fantastiques préférées ?",
            creator: sarah,
            message: "Dragon, phénix, licorne... laquelle préférez-vous ?",
            image: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2qj3yKgSmlFwjOC3VNBSzKpofVb43UitFcIDrKIZAlg&s=10" ) ,
            comments: [
                Comment(
                    creator: maya,
                    message: "Le phénix !",
                    createdAt: Date()
                ),
                Comment(
                    creator: alex,
                    message: "Dragon évidemment.",
                    createdAt: Date()
                )
            ]
        ),

        Topic(
            subject: "One Piece",
            title: "Votre arc préféré ?",
            creator: lucas,
            message: "Quel est votre arc narratif préféré dans One Piece ?",
            image: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2qj3yKgSmlFwjOC3VNBSzKpofVb43UitFcIDrKIZAlg&s=10"),
            comments: [
                Comment(
                    creator: nina,
                    message: "Marineford.",
                    createdAt: Date()
                )
            ]
        )
    ]

    // =====================================================
    // MARK: - EVENTS
    // =====================================================

    static let events: [Event] = [

        Event(
            creator: thomas,
            createdAt: Date(),
            title: "Soirée Star Wars",
            description:
                "Rencontre communautaire autour des films et personnages de Star Wars.",
            location: "Marseille",
            imageName: "starWars"
        ),

        Event(
            creator: maya,
            createdAt: Date(),
            title: "Rencontre Pixar",
            description:
                "Échange autour de Toy Story et des différents univers Pixar.",
            location: "Paris",
            imageName: "toyStory"
        ),

        Event(
            creator: sarah,
            createdAt: Date(),
            title: "Soirée folklore et légendes",
            description:
                "Discussion sur les dragons et autres créatures mythologiques.",
            location: "Londres",
            imageName: "dragon"
        ),

        Event(
            creator: lucas,
            createdAt: Date(),
            title: "Découverte manga",
            description:
                "Rencontre dédiée à One Piece, Ghost in the Shell et aux univers japonais.",
            location: "Madrid",
            imageName: "onePiece"
        )
    ]

    // =====================================================
    // MARK: - HOME / COMMUNITY
    // =====================================================

    static let favoriteWikis: [Wiki] = [
        wikis[0],
        wikis[1],
        wikis[2]
    ]

    static let trendingWikis: [Wiki] = [
        wikis[3],
        wikis[4],
        wikis[5]
    ]
}
