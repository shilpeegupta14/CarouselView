//
//  ViewModel.swift
//  Layered3DCarousel
//
//  Created by shilpee.gupta on 11/7/25.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    
    @Published var carouselItems: [CarouselItem] = []
    
    init() {
        self.carouselItems = Self.sampleData()
    }
    
    static func sampleData() -> [CarouselItem] {
        [
            CarouselItem(id: 0, name: "Barcelona", image: "barcelona"),
            CarouselItem(id: 1, name: "Paris", image: "paris"),
            CarouselItem(id: 2, name: "New York", image: "nyc"),
            CarouselItem(id: 3, name: "London", image: "london"),
            CarouselItem(id: 4, name: "Dubai", image: "dubai")
        ]
    }
}
