//
//  Helpers.swift
//  Layered3DCarousel
//
//  Created by shilpee.gupta on 11/7/25.
//

import SwiftUI

// MARK: - Helper Functions

func layerOrder(for index: Int, activeIndex: Int?) -> Double {
    guard let activeIndex else { return 0 }
    
    let distance = abs(Double(index - activeIndex))
    let zIndex = 10.0 - distance
    return max(zIndex, .leastNonzeroMagnitude)
}
