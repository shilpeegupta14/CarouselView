//
//  PageIndicator.swift
//  Layered3DCarousel
//
//  Created by shilpee.gupta on 11/7/25.
//

import SwiftUI

struct PageIndicator: View {
    var currentIndex: Int
    var totalItems: Int
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0 ..< totalItems, id: \.self) { index in
                Circle()
                    .fill(index == currentIndex ? Color.gray : Color.gray.opacity(0.5))
                    .frame(width: index == currentIndex ? 12 : 8, height: index == currentIndex ? 12 : 8)
                    .animation(.spring(), value: currentIndex)
            }
        }
        .padding(.top, 15)
    }
}

#Preview {
    PageIndicator(currentIndex: 1, totalItems: 4)
}
