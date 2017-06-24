//
//  FanzinylService.swift
//  fanzinyl
//
//  Created by Jorge Moura on 24/06/2017.
//

public protocol FanzinylService {

    func findAlbum(with identifier: ServiceIdentifier) -> Album
    func findAlbum(named name: String) -> [Album]
}
