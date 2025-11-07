//
//  CardOverlay.swift
//  Layered3DCarousel
//
//  Created by shilpee.gupta on 11/7/25.
//

import SwiftUI

struct CardOverlay: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .bold()
            .foregroundColor(.white)
            .padding(.horizontal, 10)
            .padding(.vertical, 8)
            .background(Color.blue.opacity(0.8))
            .cornerRadius(12)
            .padding(.bottom, 12)
    }
}

#Preview {
    ZStack {
        CardOverlay(title: "Barcelona")
            .frame(width: 200, height: 200, alignment: .bottomLeading)
    }
}

