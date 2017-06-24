//
//  StandardFanzinylService.swift
//  fanzinyl
//
//  Created by Jorge Moura on 24/06/2017.
//

public class StandardFanzinylService: FanzinylService {

    public func findAlbum(with identifier: ServiceIdentifier) -> Album {
        return fakeAlbum()
    }

    public func findAlbum(named name: String) -> [Album] {

        return [fakeAlbum(), fakeAlbum2()]
    }

    // MARK: - Private methods
    private func fakeAlbum() -> Album {
        let identifier: AlbumIdentifier = [.spotify: ServiceIdentifier("123456789")]

        let artist = Artist(identifier: ArtistIdentifier(), name: "The Mars Volta")
        let name = "Frances de Mute"
        let year = "2005"

        let omar = Personnel(name: "Omar Rodriguez Lopez")
        let juan = Personnel(name: "Juan Alderete")
        let isaiah = Personnel(name: "Isaiah Owens", nickname: "Ikey")

        let instrumentsOmar: [Instrument] = [.guitars, .synthesizers]
        let productionOmar: [Production] = [.producer, .recording]

        let roleOmar = Role(personnel: omar, instruments: instrumentsOmar, production: productionOmar)
        let roleJuan = Role(personnel: juan, instruments: [.bass])
        let roleIsaiah = Role(personnel: isaiah, instruments: [.keyboards])

        return Album(identifier: identifier, artist: artist, name: name, year: year, roles: [roleOmar, roleJuan, roleIsaiah])
    }

    private func fakeAlbum2() -> Album {
        let identifier: AlbumIdentifier = [.spotify: ServiceIdentifier("1111"), .appleMusic: ServiceIdentifier("2222")]

        let artist = Artist(identifier: ArtistIdentifier(), name: "Pink Floyd")
        let name = "Animals"
        let year = "1977"

        let david = Personnel(name: "David Guilmour")
        let roger = Personnel(name: "Roger Waters")
        let rick = Personnel(name: "Richard Wright", nickname: "Rick")
        let nick = Personnel(name: "Nick Mason")
        let alan = Personnel(name: "Alan Parsons")
        let stom = Personnel(name: "Hipgnosis")

        let roleDavid = Role(personnel: david, instruments: [.guitars, .vocals])
        let roleRoger = Role(personnel: roger, instruments: [.bass, .vocals])
        let roleNick = Role(personnel: nick, instruments: [.drums])
        let roleRick = Role(personnel: rick, instruments: [.keyboards, .vocals])
        let roleAlan = Role(personnel: alan, bandMember: false, production: [.engineering])
        let roleStom = Role(personnel: stom, bandMember: false, design: [.sleeveDesign])

        return Album(identifier: identifier, artist: artist, name: name, year: year, roles: [roleDavid, roleRoger, roleRick, roleNick, roleStom, roleAlan])
    }
}
