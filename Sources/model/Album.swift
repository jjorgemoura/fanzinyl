//
//  Album.swift
//  fanzinyl
//
//  Created by Jorge Moura on 24/06/2017.
//

typealias AlbumIdentifier = [String: MusicService]

public struct Album {

    let identifier: AlbumIdentifier
    let artist: Artist
    let name: String
    let year: String
    let roles: [Role]
}
