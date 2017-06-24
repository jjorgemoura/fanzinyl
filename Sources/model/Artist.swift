//
//  Artist.swift
//  fanzinyl
//
//  Created by Jorge Moura on 24/06/2017.
//

typealias ArtistIdentifier = [String: MusicService]

public struct Artist {

    let identifier: ArtistIdentifier
    let name: String
    let isSuperGroup: Bool = false
}
