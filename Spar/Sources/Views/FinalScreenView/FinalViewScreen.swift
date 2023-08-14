//
//  FinalView.swift
//  Spar
//
//  Created by Илья on 13.08.2023.
//

import SwiftUI

struct FinalViewScreen: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: Strings.Tabbar.firstImage)
                    Text(Strings.Tabbar.firstText)
                }
            MainView()
                .tabItem {
                    Image(systemName: Strings.Tabbar.secondImage)
                    Text(Strings.Tabbar.secondText)
                }
            MainView()
                .tabItem {
                    Image(systemName: Strings.Tabbar.thirdImage)
                    Text(Strings.Tabbar.thirdText)
                }
            MainView()
                .tabItem {
                    Image(systemName: Strings.Tabbar.fourthImage)
                    Text(Strings.Tabbar.fourText)
                }
        }
        .accentColor(.green)
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalViewScreen()
    }
}
