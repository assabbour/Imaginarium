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
            ),
            Wiki(
                title: "Hôtel Sidi Driss",
                subtitle: "Ferme des Lars (Tatooine) - Tunisie",
                creator: thomas,
                imageName: URL(string: "https://picsum.photos/600/400?random=70")!,
                description: "Lieu emblématique servant de décor pour la ferme troglodyte de la famille Lars, maison d'enfance de Luke Skywalker.",
                category: .films,
                createdAt: Date(),
                tags: ["Star Wars", "Tatooine", "Tunisie", "Lieu de tournage"],
                location: CLLocation(latitude: 33.5427, longitude: 9.9673),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Matmata, Tunisie"),
                    Element(elementName: "Planète", description: "Tatooine"),
                    Element(elementName: "Films", description: "Épisodes IV et II")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=71"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=72")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Cet hôtel traditionnel berbéren structure troglodytique a été utilisé par George Lucas pour tourner les scènes d'intérieur du foyer de Luke Skywalker sur la planète Tatooine."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Villa del Balbianello",
                subtitle: "Domaine de Varykino (Naboo) - Italie",
                creator: alex,
                imageName: URL(string: "https://picsum.photos/600/400?random=80")!,
                description: "Sublime villa surplombant le lac de Côme, ayant servi de cadre au mariage secret entre Anakin Skywalker et Padmé Amidala.",
                category: .films,
                createdAt: Date(),
                tags: ["Star Wars", "Naboo", "Italie", "Lieu de tournage"],
                location: CLLocation(latitude: 45.9653, longitude: 9.2025),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Lenno, Lac de Côme, Italie"),
                    Element(elementName: "Planète", description: "Naboo"),
                    Element(elementName: "Film", description: "Épisode II - L'Attaque des Clones")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=81"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=82")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Construite à la fin du XVIIIe siècle, la villa et ses jardins en terrasses incarnent la retraite paisible de la famille d'Amidala sur Naboo."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Plaza de España",
                subtitle: "Palais de Theed (Naboo) - Espagne",
                creator: sarah,
                imageName: URL(string: "https://picsum.photos/600/400?random=90")!,
                description: "Célèbre place monumentale de Séville utilisée pour figurer l'extérieur du palais royal de la cité de Theed sur la planète Naboo.",
                category: .films,
                createdAt: Date(),
                tags: ["Star Wars", "Naboo", "Espagne", "Lieu de tournage"],
                location: CLLocation(latitude: 37.3772, longitude: -5.9869),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Séville, Espagne"),
                    Element(elementName: "Planète", description: "Naboo"),
                    Element(elementName: "Film", description: "Épisode II - L'Attaque des Clones")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=91"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=92")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "La Plaza de España apparaît lors de l'arrivée d'Anakin Skywalker et de la sénatrice Padmé Amidala au palais de Theed, avec des effets numériques étendant la structure de la place."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Skellig Michael",
                subtitle: "Temple Jedi d'Ahch-To - Irlande",
                creator: maya,
                imageName: URL(string: "https://picsum.photos/600/400?random=100")!,
                description: "Île escarpée de l'Atlantique abritant un ancien monastère chrétien, transformée en premier temple Jedi de la galaxie.",
                category: .films,
                createdAt: Date(),
                tags: ["Star Wars", "Ahch-To", "Irlande", "Lieu de tournage"],
                location: CLLocation(latitude: 51.7719, longitude: -10.5398),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Comté de Kerry, Irlande"),
                    Element(elementName: "Planète", description: "Ahch-To"),
                    Element(elementName: "Films", description: "Épisodes VII et VIII")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=101"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=102")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Classée au patrimoine mondial de l'UNESCO, cette île rocheuse sert de refuge à Luke Skywalker en exil et de lieu d'entraînement pour Rey."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Glacier d'Hardangerjøkulen",
                subtitle: "Planète glaciale Hoth - Norvège",
                creator: lucas,
                imageName: URL(string: "https://picsum.photos/600/400?random=110")!,
                description: "Étendue glacée norvégienne servant de décor naturel pour la planète Hoth et la célèbre bataille de la Base Écho.",
                category: .films,
                createdAt: Date(),
                tags: ["Star Wars", "Hoth", "Norvège", "Lieu de tournage"],
                location: CLLocation(latitude: 60.6017, longitude: 7.5050),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Finse, Norvège"),
                    Element(elementName: "Planète", description: "Hoth"),
                    Element(elementName: "Film", description: "Épisode V - L'Empire contre-attaque")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=111"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=112")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "L'équipe de tournage a affronté d'incroyables tempêtes de neige aux abords du village de Finse pour immortaliser les paysages inhospitaliers de la planète glacée Hoth."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),
            Wiki(
                title: "Hobbiton",
                subtitle: "La Comté (Hobbitbourg) - Matamata",
                creator: alex,
                imageName: URL(string: "https://picsum.photos/600/400?random=220")!,
                description: "Le village bucolique des Hobbits, avec ses célèbres trous d'Hobbits nichés au cœur des collines verdoyantes de Matamata.",
                category: .films,
                createdAt: Date(),
                tags: ["Seigneur des Anneaux", "La Comté", "Hobbiton", "Lieu de tournage"],
                location: CLLocation(latitude: -37.8721, longitude: 175.6829),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Matamata, Île du Nord"),
                    Element(elementName: "Région fictive", description: "La Comté"),
                    Element(elementName: "Films", description: "Trilogies Le Seigneur des Anneaux & Le Hobbit")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=221"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=222")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Construit sur une ferme privée, ce décor permanent comprend 44 trous de Hobbits, l'auberge du Dragon Vert et le célèbre Arbre de la Fête."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Mont Ngauruhoe",
                subtitle: "Le Mont Destin (Orodruin) - Tongariro",
                creator: sarah,
                imageName: URL(string: "https://picsum.photos/600/400?random=230")!,
                description: "Stratovolcan actif servant de modèle naturel et d'arrière-plan pour le Mont Destin au cœur des terres du Mordor.",
                category: .films,
                createdAt: Date(),
                tags: ["Seigneur des Anneaux", "Mordor", "Mont Destin", "Lieu de tournage"],
                location: CLLocation(latitude: -39.1568, longitude: 175.6322),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Parc national de Tongariro"),
                    Element(elementName: "Lieu fictif", description: "Mont Destin (Orodruin)"),
                    Element(elementName: "Films", description: "Trilogie Le Seigneur des Anneaux")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=231"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=232")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Considéré comme sacré par les Maoris, le sommet du volcan n'a pas été directement filmé par respect culturel, mais numérisé et modifié pour incarner la montagne où l'Anneau a été forgé."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Parc Régional de Kaitoke",
                subtitle: "Fondcombe (Rivendell) - Wellington",
                creator: lucas,
                imageName: URL(string: "https://picsum.photos/600/400?random=240")!,
                description: "Forêt ancienne aux arbres séculaires ayant accueilli le havre de paix des Elfes dirigé par le Seigneur Elrond.",
                category: .films,
                createdAt: Date(),
                tags: ["Seigneur des Anneaux", "Fondcombe", "Elfes", "Lieu de tournage"],
                location: CLLocation(latitude: -41.0569, longitude: 175.1947),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Upper Hutt, Wellington"),
                    Element(elementName: "Lieu fictif", description: "Fondcombe (Rivendell)"),
                    Element(elementName: "Film", description: "La Communauté de l'Anneau")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=241"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=242")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "C'est dans ce parc naturel luxuriant que Frodon se remet de sa blessure de Maître Effroi et que le Conseil d'Elrond se réunit pour former la Communauté."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Mount Sunday",
                subtitle: "Edoras (Capitale du Rohan) - Canterbury",
                creator: maya,
                imageName: URL(string: "https://picsum.photos/600/400?random=250")!,
                description: "Colline isolée au milieu de plaines glaciaires spectaculaires où trônait le château de Meduseld, Palais d'Or du roi Théoden.",
                category: .films,
                createdAt: Date(),
                tags: ["Seigneur des Anneaux", "Rohan", "Edoras", "Lieu de tournage"],
                location: CLLocation(latitude: -43.5480, longitude: 170.8931),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Vallée du Rangitata, Canterbury"),
                    Element(elementName: "Lieu fictif", description: "Edoras"),
                    Element(elementName: "Film", description: "Les Deux Tours")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=251"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=252")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "L'équipe de production a mis 9 mois à construire la cité fortifiée d'Edoras au sommet de ce piton rocheux balayé par les vents."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Plaines de Twizel",
                subtitle: "Les Champs du Pelennor - Canterbury",
                creator: thomas,
                imageName: URL(string: "https://picsum.photos/600/400?random=260")!,
                description: "Vastes plaines d'herbes dorées théâtre de la plus grande bataille de la Guerre de l'Anneau devant les remparts de Minas Tirith.",
                category: .films,
                createdAt: Date(),
                tags: ["Seigneur des Anneaux", "Pelennor", "Gondor", "Lieu de tournage"],
                location: CLLocation(latitude: -44.2583, longitude: 170.0983),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Bassin de Mackenzie, Twizel"),
                    Element(elementName: "Lieu fictif", description: "Champs du Pelennor"),
                    Element(elementName: "Film", description: "Le Retour du Roi")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=261"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=262")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Plus de 1 700 figurants et cascadeurs ont été mobilisés dans cette plaine privée pour tourner la charge épique des Rohirrim et l'affrontement contre les Mûmakil."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Putangirua Pinnacles",
                subtitle: "Le Chemin des Morts (Dimholt) - Wairarapa",
                creator: alex,
                imageName: URL(string: "https://picsum.photos/600/400?random=270")!,
                description: "Impressionnantes formations rocheuses produites par l'érosion où Aragorn, Legolas et Gimli s'aventurent pour réveiller l'armée des spectres.",
                category: .films,
                createdAt: Date(),
                tags: ["Seigneur des Anneaux", "Chemin des Morts", "Dimholt", "Lieu de tournage"],
                location: CLLocation(latitude: -41.4481, longitude: 175.2421),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Aorangi Ranges, Wairarapa"),
                    Element(elementName: "Lieu fictif", description: "La Route de Dimholt"),
                    Element(elementName: "Film", description: "Le Retour du Roi")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=271"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=272")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Ces aiguilles de terre denses créent une atmosphère sombre et lugubre, parfaitement adaptée au passage menant au royaume de l'Armée des Morts."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Harcourt Park",
                subtitle: "Les Jardins d'Isengard - Wellington",
                creator: sarah,
                imageName: URL(string: "https://picsum.photos/600/400?random=280")!,
                description: "Parc naturel verdoyant utilisé pour les scènes montrant les jardins entoures la tour d'Orthanc avant leur destruction par Saroumane.",
                category: .films,
                createdAt: Date(),
                tags: ["Seigneur des Anneaux", "Isengard", "Saroumane", "Lieu de tournage"],
                location: CLLocation(latitude: -41.1342, longitude: 175.0970),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Upper Hutt, Wellington"),
                    Element(elementName: "Lieu fictif", description: "Jardins d'Isengard"),
                    Element(elementName: "Film", description: "La Communauté de l'Anneau")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=281"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=282")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "C'est ici que Gandalf le Gris arrive à cheval pour consulter Saroumane et qu'ils se promènent ensemble avant la trahison du mage blanc."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Deer Park Heights",
                subtitle: "Évacuation d'Edoras & Attaque des Wargs - Queenstown",
                creator: lucas,
                imageName: URL(string: "https://picsum.photos/600/400?random=290")!,
                description: "Presqu'île élevée offrant une vue à 360 degrés, utilisée pour le périlleux voyage du peuple du Rohan vers le Gouffre de Helm.",
                category: .films,
                createdAt: Date(),
                tags: ["Seigneur des Anneaux", "Rohan", "Wargs", "Lieu de tournage"],
                location: CLLocation(latitude: -45.0381, longitude: 168.7061),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Peninsula Hill, Queenstown"),
                    Element(elementName: "Lieu fictif", description: "Route vers le Gouffre de Helm"),
                    Element(elementName: "Film", description: "Les Deux Tours")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=291"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=292")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Ce site emblématique comprend le ravin d'où Aragorn chute lors du combat contre les chevaucheurs de Wargs d'Isengard."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Rivière Waiau",
                subtitle: "La Grande Rivière Anduin - Fiordland",
                creator: maya,
                imageName: URL(string: "https://picsum.photos/600/400?random=300")!,
                description: "Cours d'eau majestueux bordé de forêts sauvages incarnant le fleuve Anduin emprunté par la Communauté après avoir quitté la Lórien.",
                category: .films,
                createdAt: Date(),
                tags: ["Seigneur des Anneaux", "Anduin", "Fiordland", "Lieu de tournage"],
                location: CLLocation(latitude: -45.4200, longitude: 167.6300),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Te Anau, Parc national du Fiordland"),
                    Element(elementName: "Lieu fictif", description: "Fleuve Anduin"),
                    Element(elementName: "Film", description: "La Communauté de l'Anneau")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=301"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=302")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Les prises de vue de cette rivière ont ouvert le premier film lorsque la Communauté descend le fleuve en canot sous le regard attentif des Orques."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Lacs Mavora",
                subtitle: "Fin de la Communauté & Lisière de Fangorn - Southland",
                creator: thomas,
                imageName: URL(string: "https://picsum.photos/600/400?random=310")!,
                description: "Zone naturelle préservée abritant la berge de Nen Hithoel où la Communauté se sépare, ainsi que le bûcher des Uruk-hai.",
                category: .films,
                createdAt: Date(),
                tags: ["Seigneur des Anneaux", "Fangorn", "Nen Hithoel", "Lieu de tournage"],
                location: CLLocation(latitude: -45.2639, longitude: 168.1672),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Parc Mavora Lakes, Southland"),
                    Element(elementName: "Lieux fictifs", description: "Nen Hithoel & Lisière de Fangorn"),
                    Element(elementName: "Films", description: "La Communauté de l'Anneau & Les Deux Tours")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=311"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=312")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Ce site pittoresque regroupe plusieurs scènes clés : le départ furtif de Frodon et Sam en barque, ainsi que la recherche de Merry et Pippin par Aragorn, Legolas et Gimli."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),
            Wiki(
                title: "Zhangjiajie National Forest Park",
                subtitle: "Montagnes Hallelujah de Pandora (Avatar) - Chine",
                creator: alex,
                imageName: URL(string: "https://picsum.photos/600/400?random=320")!,
                description: "Piliers de grès quartzique géants s'élevant au-dessus de la brume, ayant inspiré les montagnes suspendues de la planète Pandora.",
                category: .films,
                createdAt: Date(),
                tags: ["Avatar", "Pandora", "Chine", "Lieu d'inspiration"],
                location: CLLocation(latitude: 29.3167, longitude: 110.4333),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Wulingyuan, Hunan, Chine"),
                    Element(elementName: "Monde imaginaire", description: "Pandora (Avatar)"),
                    Element(elementName: "Réalisateur", description: "James Cameron")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=321"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=322")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Le pilier rocheux 'Southern Sky Column' y a été officiellement rebaptisé 'Avatar Hallelujah Mountain' en hommage au film de James Cameron."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Jiufen Old Street",
                subtitle: "Le village du Voyage de Chihiro - Taïwan",
                creator: sarah,
                imageName: URL(string: "https://picsum.photos/600/400?random=330")!,
                description: "Ruelle escarpée bordée de maisons de thé traditionnelles et de lanternes rouges rappelant le monde des esprits de Hayao Miyazaki.",
                category: .films,
                createdAt: Date(),
                tags: ["Ghibli", "Le Voyage de Chihiro", "Taïwan", "Lieu d'inspiration"],
                location: CLLocation(latitude: 25.1089, longitude: 121.8442),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Ruifang, New Taipei, Taïwan"),
                    Element(elementName: "Monde imaginaire", description: "La Cité des Esprits"),
                    Element(elementName: "Studio", description: "Studio Ghibli")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=331"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=332")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Ancienne cité minière, Jiufen évoque immédiatement l'atmosphère nocturne envoûtante du chef-d'œuvre d'animation de Miyazaki."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Angkor Wat",
                subtitle: "Temple de Ta Prohm (Tomb Raider) - Cambodge",
                creator: lucas,
                imageName: URL(string: "https://picsum.photos/600/400?random=340")!,
                description: "Cités millénaires englouties par les racines géantes des fromagers, décor des aventures de Lara Croft.",
                category: .films,
                createdAt: Date(),
                tags: ["Tomb Raider", "Lara Croft", "Cambodge", "Lieu de tournage"],
                location: CLLocation(latitude: 13.4125, longitude: 103.8670),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Siem Reap, Cambodge"),
                    Element(elementName: "Univers", description: "Tomb Raider"),
                    Element(elementName: "Personnage", description: "Lara Croft")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=341"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=342")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Le temple de Ta Prohm est devenu mondialement célèbre grâce au film Lara Croft: Tomb Raider, montrant la lutte fascinante entre pierre et nature."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Hạ Long Bay",
                subtitle: "L'Antre de Skull Island - Viêt Nam",
                creator: maya,
                imageName: URL(string: "https://picsum.photos/600/400?random=350")!,
                description: "Baie mystique de rochers karstiques émergeant des eaux, berceau du Titan King Kong.",
                category: .films,
                createdAt: Date(),
                tags: ["King Kong", "Skull Island", "Viêt Nam", "Lieu de tournage"],
                location: CLLocation(latitude: 20.9101, longitude: 107.1839),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Baie d'Ha Long, Viêt Nam"),
                    Element(elementName: "Monde imaginaire", description: "Skull Island"),
                    Element(elementName: "Film", description: "Kong: Skull Island")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=351"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=352")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Les îlots escarpés et les brumes matinales de la baie recréent le territoire inviolé du roi des monstres."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Takachiho Gorge",
                subtitle: "Le Royaume de la Déesse Amaterasu - Japon",
                creator: thomas,
                imageName: URL(string: "https://picsum.photos/600/400?random=360")!,
                description: "Gorge basaltique spectaculaire considérée dans le folklore japonais comme le lieu sacré où se terre la déesse du Soleil.",
                category: .folklore,
                createdAt: Date(),
                tags: ["Mythologie", "Japon", "Amaterasu", "Shinto"],
                location: CLLocation(latitude: 32.7118, longitude: 131.3051),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Miyazaki, Kyushu, Japon"),
                    Element(elementName: "Mythologie", description: "Légendes Shinto"),
                    Element(elementName: "Lieu sacré", description: "Grotte Amano Iwato")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=361"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=362")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Ce site naturel enchanteur inspire de nombreux récits fantasy et mangas explorant le folklore ancestral nippon."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),
            Wiki(
                title: "Aït Benhaddou",
                subtitle: "Cité de Yunkai (Game of Thrones) - Maroc",
                creator: alex,
                imageName: URL(string: "https://picsum.photos/600/400?random=370")!,
                description: "Ksar fortifié en terre battue servant de décor à la cité des esclaves affranchie par Daenerys Targaryen.",
                category: .series,
                createdAt: Date(),
                tags: ["Game of Thrones", "Yunkai", "Maroc", "Lieu de tournage"],
                location: CLLocation(latitude: 31.0470, longitude: -7.1319),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Ouarzazate, Maroc"),
                    Element(elementName: "Cité fictive", description: "Yunkai / Pentos"),
                    Element(elementName: "Série", description: "Game of Thrones")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=371"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=372")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Ce chef-d'œuvre d'architecture du Sud marocain incarne la Baie des Serfs et les cités libres d'Essos dans la saga de George R.R. Martin."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Deadvlei",
                subtitle: "Paysages post-apocalyptiques & extraterrestres - Namibie",
                creator: sarah,
                imageName: URL(string: "https://picsum.photos/600/400?random=380")!,
                description: "Cuvette d'argile blanche aux arbres calcinés par le temps, entourée par les plus hautes dunes de sable du monde.",
                category: .films,
                createdAt: Date(),
                tags: ["Sci-Fi", "Mad Max", "Namibie", "Lieu de tournage"],
                location: CLLocation(latitude: -24.7592, longitude: 15.2922),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Sossusvlei, Namibie"),
                    Element(elementName: "Genre", description: "Science-Fiction / Surrealisme"),
                    Element(elementName: "Films", description: "The Cell, Mad Max: Fury Road")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=381"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=382")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Ce décor irréel vieux de 900 ans offre un paysage figé hors du temps régulièrement exploité par le cinéma de science-fiction."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Tsingy De Bemaraha National Park",
                subtitle: "Forêt de pierre fantastique - Madagascar",
                creator: lucas,
                imageName: URL(string: "https://picsum.photos/600/400?random=390")!,
                description: "Labyrinthe inextricable d'aiguilles calcaires tranchantes abritant une faune unique au monde.",
                category: .folklore,
                createdAt: Date(),
                tags: ["Madagascar", "Nature", "Prehistorique", "Lieu d'inspiration"],
                location: CLLocation(latitude: -19.1435, longitude: 44.8016),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Région Melaky, Madagascar"),
                    Element(elementName: "Univers", description: "Mondes perdus"),
                    Element(elementName: "Type", description: "Formation géologique")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=391"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=392")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Ce paysage surréaliste évoque les continents oubliés et les repaires de créatures fantastiques de la littérature d'aventure."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Hells Gate National Park",
                subtitle: "Rocher des Lions (Le Roi Lion) - Kenya",
                creator: maya,
                imageName: URL(string: "https://picsum.photos/600/400?random=400")!,
                description: "Canyons profonds et falaises de grès ayant servi d'inspiration aux dessinateurs de Disney pour la Terre des Lions.",
                category: .films,
                createdAt: Date(),
                tags: ["Le Roi Lion", "Disney", "Kenya", "Lieu d'inspiration"],
                location: CLLocation(latitude: -0.8872, longitude: 36.3150),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Naivasha, Kenya"),
                    Element(elementName: "Monde imaginaire", description: "La Terre des Lions"),
                    Element(elementName: "Studio", description: "Walt Disney Animation")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=401"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=402")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "L'équipe artistique du film y a effectué un voyage d'étude pour capturer la lumière, les rochers et l'esprit de la savane africaine."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Atlas Studios",
                subtitle: "Hollywood du Désert - Ouarzazate, Maroc",
                creator: thomas,
                imageName: URL(string: "https://picsum.photos/600/400?random=410")!,
                description: "Plus grand studio de cinéma au monde par sa superficie, abritant des décors égyptiens, romains et médiévaux grandeur nature.",
                category: .films,
                createdAt: Date(),
                tags: ["Cinéma", "Gladiator", "Maroc", "Studio"],
                location: CLLocation(latitude: 30.9388, longitude: -6.9691),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Ouarzazate, Maroc"),
                    Element(elementName: "Usage", description: "Studios de tournage"),
                    Element(elementName: "Films", description: "Gladiator, Kingdom of Heaven, Aladdin")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=411"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=412")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Au milieu des montagnes de l'Atlas, ce complexe rassemble des temples antiques et des palais érigés pour réinventer l'Histoire au cinéma."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),
            Wiki(
                title: "Uyuni Salt Flat",
                subtitle: "Planète minérale Crait (Star Wars) - Bolivie",
                creator: alex,
                imageName: URL(string: "https://picsum.photos/600/400?random=420")!,
                description: "Désert de sel gigantesque créant l'illusion d'un miroir parfait au ciel, théâtre de l'affrontement entre le Premier Ordre et la Résistance.",
                category: .films,
                createdAt: Date(),
                tags: ["Star Wars", "Crait", "Bolivie", "Lieu de tournage"],
                location: CLLocation(latitude: -20.1338, longitude: -67.4891),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Potosí, Bolivie"),
                    Element(elementName: "Planète", description: "Crait"),
                    Element(elementName: "Film", description: "Épisode VIII - Les Derniers Jedi")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=421"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=422")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "La croûte de sel blanc recouvrant le sol rouge a inspiré la planète minérale où la poussière rouge sang surgit sous les pas des Vaisseaux."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Historic Sanctuary of Machu Picchu",
                subtitle: "Légende d'El Dorado & Cité des Incas - Pérou",
                creator: sarah,
                imageName: URL(string: "https://picsum.photos/600/400?random=430")!,
                description: "Cité inca sacrée perchée dans les nuages, symbole des mythiques cités d'or perdues dans la jungle.",
                category: .films,
                createdAt: Date(),
                tags: ["El Dorado", "Pérou", "Transformers", "Mythe"],
                location: CLLocation(latitude: -13.1631, longitude: -72.5450),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Cusco, Pérou"),
                    Element(elementName: "Légende", description: "El Dorado / Cités Perdues"),
                    Element(elementName: "Film", description: "Transformers: Rise of the Beasts")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=431"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=432")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Cette merveille archéologique alimente depuis des siècles les récits d'aventures, d'Indiana Jones jusqu'aux sagas fantastiques hollywoodiennes."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Angel Falls",
                subtitle: "Chutes du Paradis (Là-Haut) - Venezuela",
                creator: lucas,
                imageName: URL(string: "https://picsum.photos/600/400?random=440")!,
                description: "Plus haute chute d'eau du monde jaillissant d'un tepuy, muse principale de Carl Fredricksen dans le film Pixar.",
                category: .films,
                createdAt: Date(),
                tags: ["Pixar", "Là-Haut", "Venezuela", "Lieu d'inspiration"],
                location: CLLocation(latitude: 5.9675, longitude: -62.5356),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Parc national Canaima, Venezuela"),
                    Element(elementName: "Monde imaginaire", description: "Paradise Falls"),
                    Element(elementName: "Studio", description: "Pixar Animation")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=441"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=442")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Les réalisateurs du film se sont rendus sur ce plateau vénézuélien pour recréer la majesté des chutes d'eau du film d'animation."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Iguazu Falls",
                subtitle: "Chutes du Guerrier (Wakanda) - Argentine & Brésil",
                creator: maya,
                imageName: URL(string: "https://picsum.photos/600/400?random=450")!,
                description: "Ensemble impressionnant de 275 cascades tropicales, utilisé pour figurer le lieu d'intronisation des rois du Wakanda.",
                category: .films,
                createdAt: Date(),
                tags: ["Marvel", "Black Panther", "Wakanda", "Lieu de tournage"],
                location: CLLocation(latitude: -25.6953, longitude: -54.4367),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Misiones (Argentine) / Paraná (Brésil)"),
                    Element(elementName: "Royaume imaginaire", description: "Wakanda (Warrior Falls)"),
                    Element(elementName: "Studio", description: "Marvel Studios")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=451"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=452")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "C'est devant ce décor naturel grandiose que T'Challa affronte Killmonger pour le trône du royaume du Wakanda."
                    )
                ]),
                linksSegment: LinksSegment(links: [])
            ),

            Wiki(
                title: "Mount Roraima",
                subtitle: "Le Monde Perdu d'Arthur Conan Doyle - Venezuela",
                creator: thomas,
                imageName: URL(string: "https://picsum.photos/600/400?random=460")!,
                description: "Montagne tabulaire (tepuy) aux falaises abruptes de 400 mètres, abritant un écosystème isolé du reste du monde.",
                category: .livre,
                createdAt: Date(),
                tags: ["Le Monde Perdu", "Conan Doyle", "Venezuela", "Lieu d'inspiration"],
                location: CLLocation(latitude: 5.1433, longitude: -60.7625),
                homeSegment: HomeSegment(elements: [
                    Element(elementName: "Lieu réel", description: "Plateau des Guyanes, Venezuela"),
                    Element(elementName: "Livre", description: "Le Monde Perdu (1912)"),
                    Element(elementName: "Auteur", description: "Sir Arthur Conan Doyle")
                ]),
                gallerySegment: GallerySegment(gallery: [
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=461"),
                    ImageGallerySegment(image: "https://picsum.photos/600/400?random=462")
                ]),
                descriptionSegment: DescriptionSegment(sections: [
                    TextSection(
                        title: "Résumé",
                        contents: "Ce plateau inaccessible a inspiré le roman culte où des créatures préhistoriques et des dinosaures auraient survécu jusqu'à nos jours."
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
