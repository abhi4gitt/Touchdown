//
//  ContentView.swift
//  Touchdown
//
//  Created by Abhishek on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // GeometryReader is used to access safe area insets safely (iOS 15+)
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 0) {
                    // Top navigation bar with safe area padding
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, geometry.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)

                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .padding(.vertical, 20)
                            
                            FooterView()
                                .padding(.horizontal)
                            
                        } //: VSTACK
                    }) //: SCROLL
                } //: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } //: ZSTACK
            .ignoresSafeArea(.all, edges: .top)
        } //: GEOMETRYREADER
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
