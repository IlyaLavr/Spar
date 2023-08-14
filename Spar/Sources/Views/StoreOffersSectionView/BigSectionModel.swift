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
        StoreOffersModel(id: UUID(), image: "logo", text: "Круто"),
        StoreOffersModel(id: UUID(), image: "social", text: "Круто"),
        StoreOffersModel(id: UUID(), image: "drink", text: "Круто"),
        StoreOffersModel(id: UUID(), image: "degustation", text: "Круто"),
        StoreOffersModel(id: UUID(), image: "new", text: "Круто"),
        StoreOffersModel(id: UUID(), image: "action", text: "Круто")
    ]
}
