//
//  Artist.swift
//  fanzinyl
//
//  Created by Jorge Moura on 24/06/2017.
//

public struct Artist {

    let identifier: ArtistIdentifier
    let name: String
    let isSuperGroup: Bool

    init(identifier: ArtistIdentifier, name: String, superGroup: Bool = false) {
        self.identifier = identifier
        self.name = name
        self.isSuperGroup = superGroup
    }
}
