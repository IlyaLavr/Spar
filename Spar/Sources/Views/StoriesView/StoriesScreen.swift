//
//  StoriesScreen.swift
//  Spar
//
//  Created by Илья on 13.08.2023.
//

import SwiftUI

struct StoriesScreen: View {
    let model = StoriesModel.getStories()
    var columns = [
        GridItem()
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: columns, spacing: 10) {
                ForEach(model, id: \.id) { story in
                    VStack {
                        ZStack {
                            Circle()
                                .stroke(lineWidth: 3)
                                .frame(height: 90)
                                .foregroundColor(.green)
                            Image(story.image)
                                .resizable()
                                .cornerRadius(50)
                                .frame(width: 84, height: 84)
                        }
                        .padding(.leading, 10)
                        Text(story.text)
                            .font(.system(size: 14))
                    }
                }
            }
        }
    }
}

struct StoriesScreen_Previews: PreviewProvider {
    static var previews: some View {
        StoriesScreen()
    }
}
