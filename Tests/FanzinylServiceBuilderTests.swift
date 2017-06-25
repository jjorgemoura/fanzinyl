//
//  FanzinylServiceBuilderTests.swift
//  fanzinyl
//
//  Created by Jorge Moura on 25/06/2017.
//

import XCTest
@testable import fanzinyl

class FanzinylServiceBuilderTests: XCTestCase {

    func testDefaultBuild() {
        let builder = FanzinylServiceBuilder()
        let communicator = StandardFanzinylCommunicator()

        let _ = builder.build(with: nil)

        XCTAssertTrue(type(of: builder.communicator) == type(of: communicator))
    }

    func testBuildWithSpecificCommunicator() {
        let builder = FanzinylServiceBuilder()
        let communicator = StandardFanzinylCommunicator()

        let _ = builder.build { builder in
            builder.communicator = communicator
        }

        if let xxx = builder.communicator as? StandardFanzinylCommunicator {
            print(xxx.self)
            print(xxx === communicator)
        }

        XCTAssertTrue(type(of: builder.communicator) == type(of: communicator))
    }

    func testInstancesOfBuildWithSpecificCommunicator() {
        let builder = FanzinylServiceBuilder()
        let communicator = StandardFanzinylCommunicator()

        let _ = builder.build { builder in
            builder.communicator = communicator
        }

        if let communicatorFromBuider = builder.communicator as? StandardFanzinylCommunicator {
            XCTAssertTrue(communicatorFromBuider === communicator)
        }
    }

    func testInstancesInService() {
        let builder = FanzinylServiceBuilder()
        let communicator = StandardFanzinylCommunicator()

        let service = builder.build { builder in
            builder.communicator = communicator
        }

        if let communicatorFromService = service.communicator as? StandardFanzinylCommunicator {
            XCTAssertTrue(communicatorFromService === communicator)
        } else {
            XCTFail()
        }
    }
}
