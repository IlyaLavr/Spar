//
//  RecommendationModel.swift
//  Spar
//
//  Created by Илья on 13.08.2023.
//

import Foundation

protocol RecommendationProtocol {
    var id: UUID { get }
    var productImage: String { get }
    var price: String { get }
    var cart: String { get }
    var specialLabel: String? { get }
}

struct RecommendationModel: RecommendationProtocol {
    let id: UUID
    let productImage: String
    let price: String
    let cart: String
    let specialLabel: String?
}

extension RecommendationModel {
    static func getRecomendationItem() -> [RecommendationProtocol] {
        return [
            RecommendationModel(
                id: UUID(),
                productImage: "milk",
                price: "100,99 р/шт",
                cart: "cart",
                specialLabel: "Удар по ценам"
            ),
            RecommendationModel(
                id: UUID(),
                productImage: "iogurt",
                price: "205,10 р/шт",
                cart: "cart",
                specialLabel: nil
            ),
            RecommendationModel(
                id: UUID(),
                productImage: "cookies",
                price: "300 р/шт",
                cart: "cart",
                specialLabel: "Супер цена"
            ),
            RecommendationModel(
                id: UUID(),
                productImage: "cola",
                price: "490,45 р/шт",
                cart: "cart",
                specialLabel: nil
            ),
            RecommendationModel(
                id: UUID(),
                productImage: "chicken",
                price: "1567,30 р/шт",
                cart: "cart",
                specialLabel: "Скидка 15%"
            ),
            RecommendationModel(
                id: UUID(),
                productImage: "bread",
                price: "200 р/шт",
                cart: "cart",
                specialLabel: nil
            ),
            RecommendationModel(
                id: UUID(),
                productImage: "apple",
                price: "500 р/шт",
                cart: "cart",
                specialLabel: "По карте"
            ),
            RecommendationModel(
                id: UUID(),
                productImage: "alcohol",
                price: "560 р/шт",
                cart: "cart", specialLabel: nil
            )
        ]
    }
    
    static func getSweetMoodItem() -> [RecommendationProtocol] {
        return [
            RecommendationModel(
                id: UUID(),
                productImage: "cookies",
                price: "100,99 р/шт",
                cart: "cart",
                specialLabel: "По карте"
            ),
            RecommendationModel(
                id: UUID(),
                productImage: "apple",
                price: "205,10 р/шт",
                cart: "cart",
                specialLabel: nil)
            ,
            RecommendationModel(
                id: UUID(),
                productImage: "chicken",
                price: "300 р/шт",
                cart: "cart",
                specialLabel: "По карте"
            ),
            RecommendationModel(
                id: UUID(),
                productImage: "cola",
                price: "490,45 р/шт",
                cart: "cart",
                specialLabel: "Скидка 15%"
            ),
            RecommendationModel(
                id: UUID(),
                productImage: "chicken",
                price: "1567,30 р/шт",
                cart: "cart",
                specialLabel: nil
            ),
            RecommendationModel(
                id: UUID(),
                productImage: "bread",
                price: "200 р/шт",
                cart: "cart",
                specialLabel: nil
            ),
            RecommendationModel(
                id: UUID(),
                productImage: "apple",
                price: "500 р/шт",
                cart: "cart",
                specialLabel: nil
            ),
            RecommendationModel(
                id: UUID(),
                productImage: "alcohol",
                price: "560 р/шт",
                cart: "cart",
                specialLabel: "Удар по ценам"
            )
        ]
    }
}
