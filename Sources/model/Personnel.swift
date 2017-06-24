//
//  Personnel.swift
//  fanzinyl
//
//  Created by Jorge Moura on 24/06/2017.
//

public struct Personnel {

    let name: String
    let nickname: String?

    init(name: String, nickname: String? = nil) {
        self.name = name
        self.nickname = nickname
    }
}
