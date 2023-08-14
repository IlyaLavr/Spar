//
//  BigSectionScreen.swift
//  Spar
//
//  Created by Илья on 13.08.2023.
//

import SwiftUI

struct BigSectionScreen: View {
    let model = BigSectionModel.getSections()
    var columns = [
        GridItem()
    ]
    let width = UIScreen.main.bounds.width - 50
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: columns, spacing: 10) {
                ForEach(model, id: \.id) { model in
                    Image(model.image)
                        .resizable()
                        .frame(width: width, height: 180)
                        .cornerRadius(20)
                }
                .padding(.leading, 10)
            }
        }
    }
}

struct BigSectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        BigSectionScreen()
    }
}
