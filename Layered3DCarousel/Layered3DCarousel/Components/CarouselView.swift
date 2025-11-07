//
//  CarouselView.swift
//  Layered3DCarousel
//
//  Created by shilpee.gupta on 11/7/25.
//

import SwiftUI

struct CarouselView: View {
    @State private var activeIndex: Int? = nil
    @Binding var carouselItems: [CarouselItem]
    
    var body: some View {
        GeometryReader { proxy in
            
            let availableHeight = max(proxy.size.height, 0)
            let baseWidth = max(proxy.size.width - 100, proxy.size.width * 0.7)
            let cardSize = max(min(baseWidth, availableHeight), 1)
            
            VStack(spacing: 12) {
                CardStackView(activeIndex: $activeIndex,
                              carouselItems: $carouselItems,
                              cardSize: cardSize)
                
                PageIndicator(currentIndex: activeIndex ?? 0,
                              totalItems: carouselItems.count)
            }
            .frame(width: proxy.size.width,
                   height: proxy.size.height,
                   alignment: .center
            )
        }
    }
}

#Preview {
    ContentView(viewModel: ViewModel())
}
