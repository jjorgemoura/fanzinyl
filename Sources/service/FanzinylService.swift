//
//  FanzinylService.swift
//  fanzinyl
//
//  Created by Jorge Moura on 24/06/2017.
//

import RxSwift

public protocol FanzinylService {

    var communicator: FanzinylCommunicator { get }

    init(with builder: FanzinylServiceBuilder)

    func findAlbum(with identifier: ServiceIdentifier) -> Observable<[Album]>
    func findAlbum(named name: String) -> Observable<[Album]>
}
