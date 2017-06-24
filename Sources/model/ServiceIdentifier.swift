//
//  ServiceIdentifier.swift
//  fanzinyl
//
//  Created by Jorge Moura on 24/06/2017.
//

typealias AlbumIdentifier = [MusicService: ServiceIdentifier]
typealias ArtistIdentifier = [MusicService: ServiceIdentifier]

public struct ServiceIdentifier {

    let identifier: String

    init(_ identifier: String) {
        self.identifier = identifier
    }

    init(_ identifier: Int) {
        self.identifier = String(identifier)
    }
}
