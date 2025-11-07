//
//  ContentView.swift
//  Layered3DCarousel
//
//  Created by shilpee.gupta on 11/7/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        CarouselView(carouselItems: $viewModel.carouselItems)
            .padding()
    }
}

#Preview {
    ContentView(viewModel: ViewModel())
}
