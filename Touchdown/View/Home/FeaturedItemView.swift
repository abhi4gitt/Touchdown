//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Abhishek on 15/04/25.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTY
    
    let player: Player
    
    // MARK: - BODY
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    FeaturedItemView(player: players[0])
        .padding()
        .background(colorBackground)
}
