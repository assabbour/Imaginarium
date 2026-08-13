import Foundation
import MapKit

/// Données statiques
struct MockData {

    // =====================================================
    // MARK: - USERS
    // =====================================================

    // User CONNECTÉ
    static let alex = User(
        id: UUID(),
        email: "alex@imaginarium.app",
        pseudo: "Alex",
        password: "password",
        profilPicture: URL(string: "https://i.pravatar.cc/300?img=11")!,
        pays: .france,
        description: "Alex explore depuis de longues années les frontières entre le folklore ancien et les récits d'anticipation moderne. Passionné par la préservation des légendes oubliées, il documente avec minutie les sanctuaires cachés et les créatures mythologiques qui peuplent nos imaginaires",
        createdAt: Date(),
        role: .user
    )
    //-----------------------------------------------------
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
                description: "Toy Story raconte les aventures de jouets qui prennent vie lorsque les humains ne les regardent pas.",
                category: .films,
                createdAt: Date(),
                tags: ["Pixar", "Animation", "Aventure"],
                location: CLLocation(latitude: 37.8324, longitude: -122.2851),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Studio", description: "Pixar Animation Studios"),
                    Element(elementName: "Année de sortie", description: "1995")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=11"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=12"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=13")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Toy Story raconte les aventures de jouets qui prennent vie lorsque les humains ne les regardent pas."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Star Wars",
                subtitle: "Une galaxie lointaine",
                creator: thomas,
                imageName: URL(string: "https://picsum.photos/600/400?random=20")!,
                description: "Star Wars présente une galaxie peuplée de nombreuses civilisations, Jedi, Sith et créatures.",
                category: .films,
                createdAt: Date(),
                tags: ["Science-fiction", "Espace", "Jedi"],
                location: CLLocation(latitude: 36.4915, longitude: -117.2283),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Créateur", description: "George Lucas"),
                    Element(elementName: "Premier film", description: "1977")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=21"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=22")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Star Wars présente une galaxie peuplée de nombreuses civilisations, Jedi, Sith et créatures."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Harry Potter",
                subtitle: "Le monde des sorciers",
                creator: sarah,
                imageName: URL(string: "https://picsum.photos/600/400?random=30")!,
                description: "Harry Potter raconte l'histoire d'un jeune sorcier découvrant un monde magique caché.",
                category: .livre,
                createdAt: Date(),
                tags: ["Magie", "Fantasy", "Sorciers"],
                location: CLLocation(latitude: 51.5319, longitude: -0.1246),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Auteur", description: "J.K. Rowling"),
                    Element(elementName: "Nombre de tomes", description: "7")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=31"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=32")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Harry Potter raconte l'histoire d'un jeune sorcier découvrant un monde magique caché."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Dragon",
                subtitle: "Créature légendaire",
                creator: sarah,
                imageName: URL(string: "https://picsum.photos/600/400?random=40")!,
                description: "Le dragon est une créature mythologique présente dans de nombreuses cultures et légendes.",
                category: .folklore,
                createdAt: Date(),
                tags: ["Dragon", "Mythologie", "Créature"],
                location: CLLocation(latitude: 45.8326, longitude: 6.8652),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Origine", description: "Mythologies européenne et asiatique"),
                    Element(elementName: "Symbolique", description: "Puissance et sagesse")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=41"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=42")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Le dragon est une créature mythologique présente dans de nombreuses cultures et légendes."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),
            Wiki(
                        title: "Star Wars",
                        subtitle: "Une galaxie lointaine",
                        creator: alex, // <--- ICI : c'était "thomas" avant
                        imageName: URL(string: "https://picsum.photos/600/400?random=20")!,
                        description: "Star Wars présente une une créature mythologique présente dans de nombreuses cultures et légendes galaxie peuplée de nombreuses civilisations, Jedi, Sith et créatures. une créature mythologique présente dans de nombreuses cultures et légendes",
                        category: .films,
                        createdAt: Date(),
                        tags: ["Science-fiction", "Espace", "Jedi"],
                        location: CLLocation(latitude: 36.4915, longitude: -117.2283),
                        homeSegment: HomeSegment(elements: [
                            Element(elementName: "Créateur", description: "George Lucas"),
                            Element(elementName: "Premier film", description: "1977")
                        ]),
                        gallerySegment: GallerySegment(gallery: [
                            ImageGallerySegment(image: "https://picsum.photos/600/400?random=21"),
                            ImageGallerySegment(image: "https://picsum.photos/600/400?random=22")
                        ]),
                        descriptionSegment: DescriptionSegment(sections: [
                            TextSection(
                                title: "Résumé",
                                contents: "Star Wars présente une galaxie peuplée de nombreuses civilisations, Jedi, Sith et créatures."
                            )
                        ]),
                        linksSegment: LinksSegment(links: [])
                    ),
            Wiki(
                title: "Ghost in the Shell",
                subtitle: "Univers cyberpunk",
                creator: lucas,
                imageName: URL(string: "https://picsum.photos/600/400?random=50")!,
                description: "Ghost in the Shell explore une société futuriste où humains et technologies cybernétiques se confondent.",
                category: .series,
                createdAt: Date(),
                tags: ["Cyberpunk", "Manga", "Technologie"],
                location: CLLocation(latitude: 35.6762, longitude: 139.6503),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Auteur", description: "Masamune Shirow"),
                    Element(elementName: "Année", description: "1989")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=51"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=52")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Ghost in the Shell explore une société futuriste où humains et technologies cybernétiques se confondent."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "One Piece",
                subtitle: "Le monde des pirates",
                creator: lucas,
                imageName: URL(string: "https://picsum.photos/600/400?random=60")!,
                description: "One Piece suit Luffy et son équipage dans leur voyage à travers des océans remplis d'îles extraordinaires.",
                category: .series,
                createdAt: Date(),
                tags: ["Manga", "Pirate", "Aventure"],
                location: CLLocation(latitude: 35.6895, longitude: 139.6917),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Auteur", description: "Eiichiro Oda"),
                    Element(elementName: "Année", description: "1997")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=61"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=62")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "One Piece suit Luffy et son équipage dans leur voyage à travers des océans remplis d'îles extraordinaires."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            )
        ]

    // =====================================================
    // MARK: - DISCUSSIONS
    // =====================================================

    static let topics: [Topic] = [

            // MARK: - Odyssée (image déjà présente, mal assignée avant)
            Topic(
                subject: "Odyssée",
                title: "Le nouveau film de Nolan est trop bien",
                creator: alex,
                message: "La bande-annonce de L'Odyssée vient de sortir et l'ambiance mythologique semble dingue. Entre l'échelle de production et le casting, est-ce que ça vous donne envie ou vous restez sceptiques après Oppenheimer ?",
                category: .Trending,
                image: URL(string: "https://i.ytimg.com/vi/uBh8Sg8wOuA/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCgPil4po184W7q0_EpfJCs3GeAig"),
                comments: [
                    Comment(creator: sarah, message: "L'échelle IMAX 70mm annoncée me fait déjà rêver.", createdAt: Date()),
                    Comment(creator: lucas, message: "J'attends de voir le casting complet avant de m'emballer.", createdAt: Date())
                ]
            ),

            // MARK: - Ghost in the Shell (image déjà présente, mal assignée avant)
            Topic(
                subject: "Ghost in the Shell",
                title: "Motoko Kusanagi, l'héroïne cyberpunk ultime ?",
                creator: sarah,
                message: "Entre les questionnements sur l'identité, la conscience et le corps augmenté, Ghost in the Shell reste une référence absolue du cyberpunk. Trente ans après, est-ce que le film a encore quelque chose à dire sur notre rapport à la technologie, ou est-ce qu'il a été dépassé par des œuvres plus récentes ?",
                category: .Favoris,
                image: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAeguHb0-8sN-ldntFlHWjuSDg2IJaD9T4CRtogd8z7w&s=10"),
                comments: [
                    Comment(creator: maya, message: "Toujours aussi pertinent, surtout avec l'IA aujourd'hui.", createdAt: Date()),
                    Comment(creator: nina, message: "L'animation de Oshii n'a pas pris une ride visuellement.", createdAt: Date())
                ]
            ),

            // MARK: - Monster Hunter (image déjà présente, mal assignée avant)
            Topic(
                subject: "Monster Hunter",
                title: "Rey Dau, le combat le plus stylé du jeu ?",
                creator: lucas,
                message: "Rey Dau franchement... wow le monstre. Entre les décharges électriques qu'il balance sur toute la carte et son design de dragon-oiseau, c'est clairement un des affrontements les plus marquants de Wilds. Vous l'avez chassé en combien de temps ?",
                category: .Trending,
                image: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2qj3yKgSmlFwjOC3VNBSzKpofVb43UitFcIDrKIZAlg&s=10"),
                comments: [
                    Comment(creator: alex, message: "L'électricité qui court sur toute la zone, c'est génial.", createdAt: Date()),
                    Comment(creator: sarah, message: "Une des meilleures intros de monstre de la série pour moi.", createdAt: Date())
                ]
            ),

            // MARK: - Folklore (générique, dragons)
            Topic(
                subject: "Folklore",
                title: "Dragons : gardiens ou monstres ?",
                creator: sarah,
                message: "Dans les légendes du monde entier, le dragon n'a pas toujours le même rôle : protecteur de trésors et de sagesse en Orient, incarnation de la destruction en Occident. Selon vous, quelle version du dragon est la plus fidèle à l'idée qu'on s'en fait aujourd'hui ?",
                category: .Favoris,
                image: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqMoMxfS050m8RJpdYRFmqygMO-IX585BCyAmAc41T4w&s=10"), // TODO: remplacer par une vraie image
                comments: [
                    Comment(creator: maya, message: "Gardien, sans hésiter, la version orientale est plus riche.", createdAt: Date()),
                    Comment(creator: alex, message: "Dragon destructeur évidemment, plus impressionnant à l'écran.", createdAt: Date())
                ]
            ),

            // MARK: - Le Seigneur des Anneaux
            Topic(
                subject: "Le Seigneur des Anneaux",
                title: "Quel personnage de la Terre du Milieu incarnez-vous ?",
                creator: alex,
                message: "Entre le courage d'Aragorn, la sagesse de Gandalf, la loyauté de Sam ou la résilience de Frodon, chaque personnage porte une valeur différente. Si vous deviez incarner l'un d'eux dans votre quotidien, lequel choisiriez-vous et pourquoi ?",
                category: .Favoris,
                image: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBzb_TzezG6KhwazNLCoyCcpc2scWLPcnG_rfNvmAjKA&s=10"), // TODO: remplacer par une vraie image
                comments: [
                    Comment(creator: sarah, message: "Gandalf, pour la sagesse et le sens du sacrifice.", createdAt: Date()),
                    Comment(creator: nina, message: "Sam, le vrai héros discret de l'histoire.", createdAt: Date())
                ]
            ),

            // MARK: - Avatar
            Topic(
                subject: "Avatar",
                title: "Pandora vous fascine-t-elle autant que nous ?",
                creator: maya,
                message: "Entre la bioluminescence de la forêt la nuit, le lien spirituel des Na'vis avec Eywa et le vol sur les Ikrans, le monde de Pandora reste l'un des univers les plus immersifs jamais créés au cinéma. Qu'est-ce qui vous marque le plus dans cet univers ?",
                category: .Decouvrir,
                image: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbrIrHHLbvzpwcI6zLzeGKQ8BdowpnDuDKPamNnAUW8Q&s=10"), // TODO: remplacer par une vraie image
                comments: [
                    Comment(creator: lucas, message: "Voler sur un Ikran, ça reste un rêve absolu.", createdAt: Date()),
                    Comment(creator: alex, message: "La forêt bioluminescente la nuit, c'est juste magnifique.", createdAt: Date())
                ]
            ),

            // MARK: - Harry Potter
            Topic(
                subject: "Harry Potter",
                title: "Quelle maison de Poudlard vous correspond vraiment ?",
                creator: nina,
                message: "Gryffondor pour le courage, Serpentard pour l'ambition, Serdaigle pour l'intelligence, Poufsouffle pour la loyauté... Le Choixpeau vous a-t-il déjà surpris, ou avez-vous toujours su dans quelle maison vous vous reconnaissiez ?",
                category: .Trending,
                image: URL(string: "https://www.jolie-bobine.fr/wp-content/uploads/2022/06/Hogwarts-Houses-1.jpg"), // TODO: remplacer par une vraie image
                comments: [
                    Comment(creator: maya, message: "Serdaigle, sans hésitation, j'assume à fond.", createdAt: Date()),
                    Comment(creator: lucas, message: "Gryffondor, même si je suis loin d'être courageux au quotidien.", createdAt: Date())
                ]
            ),

            // MARK: - Zelda
            Topic(
                subject: "Zelda",
                title: "Quelle région d'Hyrule exploreriez-vous en premier ?",
                creator: sarah,
                message: "Entre les plaines paisibles d'Hyrule, le désert brûlant de Gerudo et les sommets glacés de Death Mountain, chaque région a son ambiance propre. Si vous débarquiez à Hyrule aujourd'hui, où poseriez-vous le pied en premier ?",
                category: .Trending,
                image: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQRXm1Y1Dk1-VIud9t0aUG8H3JwkaNFacECpN6a6sYLQ&s=10"), // TODO: remplacer par une vraie image
                comments: [
                    Comment(creator: maya, message: "Le désert Gerudo, pour l'ambiance et l'architecture.", createdAt: Date()),
                    Comment(creator: nina, message: "Les plaines d'Hyrule, tellement paisibles au lever du soleil.", createdAt: Date())
                ]
            ),

            // MARK: - One Piece
            Topic(
                subject: "One Piece",
                title: "Votre arc préféré ?",
                creator: lucas,
                message: "Marineford, Wano, Dressrosa... One Piece a enchaîné les arcs légendaires depuis plus de vingt ans. Lequel vous a le plus marqué émotionnellement, et lequel referiez-vous sans hésiter ?",
                category: .Decouvrir,
                image: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkKAWqp4jTvySTcD9nw3KHUV_C5O4bLU85pHkjz-Nxng&s=10"), // TODO: remplacer par une vraie image
                comments: [
                    Comment(creator: nina, message: "Marineford, la mort d'Ace m'a détruit.", createdAt: Date()),
                    Comment(creator: alex, message: "Wano pour moi, l'ambiance et les combats sont incroyables.", createdAt: Date())
                ]
            ),

            // MARK: - Dragons (film Dreamworks)
            Topic(
                subject: "Dragons",
                title: "Croc-Blanc ou Krokmou, votre dragon préféré ?",
                creator: maya,
                message: "Le film Dragons a réussi à rendre ces créatures aussi attachantes qu'un compagnon fidèle plutôt que des monstres à abattre. Entre Krokmou le furie nocturne et les autres dragons de l'île de Beurk, lequel choisiriez-vous comme compagnon de vol ?",
                category: .Favoris,
                image: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA2r7qXYzabdm9ChukAwqbHy6LOQOBoCFQrfDNLaSNeQ&s=10"), // TODO: remplacer par une vraie image
                comments: [
                    Comment(creator: sarah, message: "Krokmou évidemment, la relation avec Harold est trop belle.", createdAt: Date()),
                    Comment(creator: lucas, message: "J'adore le design du Terreur Terrible, plus discret.", createdAt: Date())
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

    static let trendinngWikis: [Wiki] = [
        wikis[3],
        wikis[4],
        wikis[5]
    ]
}
