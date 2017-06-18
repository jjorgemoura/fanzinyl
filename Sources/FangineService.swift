//
//  Device.swift
//  sapataz
//
//  Created by Jorge Moura on 15/05/2017.
//
//

public protocol FangineService {

    var isRunning: Bool { get }

    func technicalInfo(with identifier: String) -> String
}
