//
//  BigSectionModel.swift
//  Spar
//
//  Created by Илья on 13.08.2023.
//

import Foundation

struct BigSectionModel {
    let id: UUID
    let image: String
}

extension BigSectionModel {
    static func getSections() -> [BigSectionModel] {
        return [
            BigSectionModel(
                id: UUID(),
                image: "one"
            ),
            BigSectionModel(
                id: UUID(),
                image: "two"
            ),
            BigSectionModel(
                id: UUID(),
                image: "three"
            ),
            BigSectionModel(
                id: UUID(),
                image: "four"
            ),
            BigSectionModel(
                id: UUID(),
                image: "five")
            ,
            BigSectionModel(
                id: UUID(),
                image: "six"
            ),
        ]
    }
}
