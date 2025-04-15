//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Abhishek on 15/04/25.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .frame(height: 270) 
    }
}

#Preview {
    FeaturedTabView()
        .background(Color.gray)
}
