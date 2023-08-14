//
//  BigSectionScreen.swift
//  Spar
//
//  Created by Илья on 13.08.2023.
//

import SwiftUI

struct StoreOffersScreen: View {
    let model = StoreOffersModel.section
    var columns = [
        GridItem()
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: columns, spacing: 10) {
                ForEach(model, id: \.id) { model in
                    ZStack(alignment: .topLeading) {
                        Image(model.image)
                            .resizable()
                            .frame(width: 100, height: 120)
                            .cornerRadius(10)
                        Text(model.text)
                            .font(.caption)
                            .padding([.top, .leading], 7)
                            .lineLimit(2)
                    }
                    .padding(.leading, 10)
                }
            }
        }
    }
}

struct StoreOffersScreen_Previews: PreviewProvider {
    static var previews: some View {
        StoreOffersScreen()
    }
}
