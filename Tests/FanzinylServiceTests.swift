//
//  FanzinylServiceTests.swift
//  fanzinyl
//
//  Created by Jorge Moura on 24/06/2017.
//

import XCTest
@testable import fanzinyl10

class FanzinylServiceTests: XCTestCase {

    func testFindAlbumWithIdentifier() {
        let service = StandardFanzinylService()

        let album = service.findAlbum(with: ServiceIdentifier("1234"))

        XCTAssertTrue(album.artist.name == "The Mars Volta")
    }

    func testFindAlbumWithName() {
        let service = StandardFanzinylService()

        let album = service.findAlbum(named: "Toni")

        XCTAssertTrue(album.count == 2)
        XCTAssertTrue(album.first?.artist.name == "The Mars Volta")
    }
}
