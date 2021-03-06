//
//  FanzinylCommunicator.swift
//  fanzinyl
//
//  Created by Jorge Moura on 24/06/2017.
//

public protocol FanzinylCommunicator {

    func findAlbum(with identifier: ServiceIdentifier) -> String
    func findAlbum(named name: String) -> String
}
