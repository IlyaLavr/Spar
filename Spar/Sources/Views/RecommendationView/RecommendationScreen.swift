//
//  RecommendationScreen.swift
//  Spar
//
//  Created by Илья on 13.08.2023.
//

import SwiftUI

struct RecommendationScreen: View {
    var models: [RecommendationProtocol]
    var title: String
    var columns = [
        GridItem(.fixed(70))
    ]
    
    init(model: [RecommendationProtocol], title: String) {
        self.models = model
        self.title = title
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(title)
                .font(.system(size: 25))
                .bold()
                .padding(.leading, 10)
                .padding(.bottom, 10)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: columns) {
                    ForEach(models, id: \.id) { model in
                        ZStack {
                            Rectangle()
                                .frame(width: 120, height: 170)
                                .cornerRadius(20)
                                .foregroundColor(.white)
                                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                            VStack {
                                ZStack(alignment: .topLeading) {
                                    Image(model.productImage)
                                        .resizable()
                                        .frame(width: 120, height: 100)
                                        .cornerRadius(15)
                                        .padding(.top, 5)
                                    
                                    specialLabelView(for: model.specialLabel)
                                    
                                }
                                Spacer()
                                HStack(alignment: .bottom) {
                                    Text(model.price)
                                        .font(.system(size: 10))
                                        .bold()
                                        .padding(.bottom, 18)
                                    Button(action: {
                                    }) {
                                        Image(model.cart)
                                            .resizable()
                                            .frame(width: 40, height: 30)
                                            .padding(.top, 5)
                                            .padding(.bottom, 10)
                                    }
                                }
                            }
                        }
                        .padding(.leading, 10)
                    }
                }
                .frame(height: 180)
            }
        }
    }
}

private extension RecommendationScreen {
   private func specialLabelView(for specialLabel: String?) -> some View {
        if let label = specialLabel {
            return AnyView(
                ZStack {
                    SlantedCorner()
                        .clipShape(RoundedCorner(radius: 5, corners: [.topRight, .bottomRight]))
                        .foregroundColor(.red)
                        .frame(width: 90, height: 20)
                        .opacity(0.3)
                    
                    Text(label)
                        .font(.system(size: 9))
                        .padding(.leading, 5)
                }
            )
        } else {
            return AnyView(EmptyView())
        }
    }
}

struct RecommendationScreen_Previews: PreviewProvider {
    static var previews: some View {
        let models: [RecommendationProtocol] = RecommendationModel.getRecomendationItem()
        return RecommendationScreen(model: models, title: "Рекомендуем")
    }
}
