//
//  Role.swift
//  fanzinyl
//
//  Created by Jorge Moura on 24/06/2017.
//

public struct Role {

    let personnel: Personnel
    let isBandMember: Bool
    let instruments: [Instrument]
    let production: [Production]
    let design: [Design]

    init(personnel: Personnel, bandMember: Bool = true, instruments: [Instrument] = [], production: [Production] = [], design: [Design] = []) {
        self.personnel = personnel
        self.isBandMember = bandMember
        self.instruments = instruments
        self.production = production
        self.design = design
    }
}
