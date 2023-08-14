//
//  SearchBar.swift
//  Spar
//
//  Created by Илья on 14.08.2023.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchText: String = ""
    
    var body: some View {
        HStack {
            ZStack {
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .opacity(0.5)
                    .frame(width: UIScreen.main.bounds.width - 60)
                    .frame(height: 40)
                HStack {
                    Button(action: {
                    }) {
                        Image(Strings.SearchBar.imageLocation)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.leading, 5)
                            .foregroundColor(.red)
                    }
                    
                    TextField("", text: $searchText)
                        .keyboardType(.default)
                        .overlay(
                            Text(Strings.SearchBar.placeholder)
                                .foregroundColor(.black), alignment: .leading
                        )
                }
            }
            Button(action: {
            }) {
                Image(Strings.SearchBar.menuButtonImage)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.green)
            }
        }
    }
}
