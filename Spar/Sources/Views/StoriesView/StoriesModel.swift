//
//  StoriesModel.swift
//  Spar
//
//  Created by Илья on 13.08.2023.
//

import Foundation

struct StoriesModel {
    let id: UUID
    let image: String
    let text: String
}

extension StoriesModel {
    static func getStories() -> [StoriesModel] {
        return [
            StoriesModel(
                id: UUID(),
                image: "logo",
                text: "Мой SPAR"
            ),
            StoriesModel(
                id: UUID(),
                image: "social",
                text: "Мы в соцсетях"
            ),
            StoriesModel(
                id: UUID(),
                image: "drink",
                text: "Напитки"
            ),
            StoriesModel(
                id: UUID(),
                image: "degustation",
                text: "Дегустации"
            ),
            StoriesModel(
                id: UUID(),
                image: "new",
                text: "Новинки"
            ),
            StoriesModel(
                id: UUID(),
                image: "action",
                text: "Акции"
            )
        ]
    }
}
