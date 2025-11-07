//
//  CardStackView.swift
//  Layered3DCarousel
//
//  Created by shilpee.gupta on 11/7/25.
//

import SwiftUI

struct CardStackView: View {
    @Binding var activeIndex: Int?
    @Binding var carouselItems: [CarouselItem]
    
    let cardSize: Double
    @State private var didAppear = false
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            CardView(items: $carouselItems,
                     activeIndex: $activeIndex,
                     cardSize: cardSize
            )
        }
        .frame(height: cardSize)
        .scrollPosition(id: $activeIndex)
        .contentMargins(50, for: .scrollContent)
        .scrollTargetBehavior(.viewAligned)
        .scrollClipDisabled()
        .onAppear {
            if !didAppear {
                activeIndex = 1
                didAppear = true
            }
        }
    }
}
