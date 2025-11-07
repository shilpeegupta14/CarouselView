//
//  CarouselItem.swift
//  Layered3DCarousel
//
//  Created by shilpee.gupta on 11/7/25.
//

import Foundation

struct CarouselItem: Identifiable, Equatable {
    let id: Int
    let name: String
    let image: String
    
    init(id: Int, name: String, image: String) {
        self.id = id
        self.name = name
        self.image = image
    }
}
