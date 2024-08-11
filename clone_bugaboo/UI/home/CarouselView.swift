//
//  CarouselView.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 9/8/2567 BE.
//

import SwiftUI

struct CarouselView: View {
    let items = Array(1...6)
    
    var body: some View {
        TabView {
            ForEach(items, id: \.self) { item in
                ZStack {
                    Rectangle()
                        .fill(Color.blue)
//                        .cornerRadius(10)
//                        .shadow(radius: 5)
                    
                    Text("Featured \(item)")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                }
//                .padding()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CarouselView()
}
