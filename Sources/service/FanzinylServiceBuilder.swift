//
//  FanzinylServiceBuilder.swift
//  fanzinyl
//
//  Created by Jorge Moura on 25/06/2017.
//

public class FanzinylServiceBuilder: FanzinylCommunicatorBuilderProtocol {

    var communicator: FanzinylCommunicator = StandardFanzinylCommunicator()

    func build(with closure: ((FanzinylServiceBuilder) -> ())?) -> FanzinylService {
        closure?(self)
        return StandardFanzinylService(with: self)
    }
}
