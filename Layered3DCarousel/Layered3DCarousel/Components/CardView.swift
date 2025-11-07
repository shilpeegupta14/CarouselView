//
//  CardView.swift
//  Layered3DCarousel
//
//  Created by shilpee.gupta on 11/7/25.
//

import SwiftUI

struct CardView: View {
    @Binding var items: [CarouselItem]
    @Binding var activeIndex: Int?
    
    let cardSize: Double
    
    var body: some View {
        HStack(spacing: -24) {
            ForEach(Array(items.enumerated()), id: \.element.id) { index, item in
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(20)
                    .frame(width: cardSize, height: cardSize)
                    .clipped()
                    .overlay(alignment: .bottomLeading) {
                        CardOverlay(title: item.name)
                    }
                    .shadow(radius: 5, x: 5, y: 5)
                    .scrollTransition { content, phase in
                        content
                            .scaleEffect(y: phase.isIdentity ? 1 : 0.7)
                    }
                    .zIndex(layerOrder(for: index, activeIndex: activeIndex))
                    .id(item.id)
            }
        }
        .scrollTargetLayout()
    }
}
