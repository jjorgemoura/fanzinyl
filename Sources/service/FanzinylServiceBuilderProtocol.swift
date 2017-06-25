//
//  FanzinylServiceBuilderProtocol.swift
//  fanzinyl
//
//  Created by Jorge Moura on 25/06/2017.
//

protocol FanzinylCommunicatorBuilderProtocol {

    var communicator: FanzinylCommunicator { get set }

    func build(with closure: ((FanzinylServiceBuilder) -> ())?) -> FanzinylService
}
