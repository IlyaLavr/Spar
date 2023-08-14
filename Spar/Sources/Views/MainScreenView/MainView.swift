//
//  MainView.swift
//  Spar
//
//  Created by Илья on 13.08.2023.
//

import SwiftUI

struct MainView: View {
    let recomendationModel = RecommendationModel.getRecomendationItem()
    let sweetMoodModel = RecommendationModel.getSweetMoodItem()
    let width = UIScreen.main.bounds.width - 20
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: Metric.spacingVstackMain) {
                    StoriesScreen()
                        .frame(minHeight: Metric.minHeightStoriesScreen)
                        .padding(.top, Metric.topPaddingStoriesScreen)
                    BigSectionScreen()
                    ZStack(alignment: .topLeading) {
                        Image(Strings.MainView.imageMyBonus)
                            .resizable()
                            .cornerRadius(Metric.cornerRadiusZStack)
                        Text(Strings.MainView.myBonusScore)
                            .bold()
                            .padding([.leading, .top], Metric.paddingLeadingTopText)
                            .font(.title2)
                    }
                    .frame(width: width, height: Metric.heightZstack)
                    .shadow(radius: Metric.shadowRadiusZstack)
                    StoreOffersScreen()
                        .shadow(radius: Metric.shadowStoreOffersScreen, y: Metric.distanceYshadowStoreOffersScreen)
                    RecommendationScreen(model: recomendationModel, title: Strings.Titles.recomendationTitile)
                    RecommendationScreen(model: sweetMoodModel, title: Strings.Titles.sweetMood)
                }
                .navigationBarItems(trailing: SearchBar())
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        
    }
}

enum Metric {
    static let spacingVstackMain = CGFloat(15)
    static let minHeightStoriesScreen = CGFloat(120)
    static let topPaddingStoriesScreen = CGFloat(15)
    static let cornerRadiusZStack = CGFloat(20)
    static let paddingLeadingTopText = CGFloat(10)
    static let heightZstack = CGFloat(120)
    static let shadowRadiusZstack = CGFloat(5)
    static let shadowStoreOffersScreen = CGFloat(3)
    static let distanceYshadowStoreOffersScreen = CGFloat(-2)
}
