//
//  StoreOffersModel.swift
//  Spar
//
//  Created by Илья on 13.08.2023.
//

import Foundation

struct StoreOffersModel {
    let id: UUID
    let image: String
    let text: String
}
extension StoreOffersModel {
    static let section: [StoreOffersModel] = [
        StoreOffersModel(
            id: UUID(),
            image: "abonementcoffee",
            text: "Абонемент \n на кофе"
        ),
        StoreOffersModel(
            id: UUID(),
            image: "cardpresent",
            text: "Карта \n в подарок"
        ),
        StoreOffersModel(
            id: UUID(),
            image: "delivery",
            text: "Доставка")
        ,
        StoreOffersModel(
            id: UUID(),
            image: "list",
            text: "Списки \n покупок"
        ),
        StoreOffersModel(
            id: UUID(),
            image: "mydiscont",
            text: "Мои \n скидки"
        ),
        StoreOffersModel(
            id: UUID(),
            image: "order",
            text: "Доставка"
        ),
        StoreOffersModel(
            id: UUID(),
            image: "shopnear",
            text: "Магазины \n рядом"
        ),
        StoreOffersModel(
            id: UUID(),
            image: "sparwine",
            text: "SPAR Wine"
        )
    ]
}
