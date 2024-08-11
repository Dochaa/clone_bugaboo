//
//  HomeView.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 9/8/2567 BE.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {

                    CarouselView()
                        .frame(height: 250)
                        .padding(.top)


                    SectionView(title: "Popular Shows", items: Array(1...10))

                    SectionViewTop10(title: "Recommended Dramas", items: Array(1...10))

                    SectionView(title: "Variety Shows", items: Array(1...10))
                    
                }
                .padding(.bottom, 20)
            }
//            .navigationTitle("Home")
            .foregroundColor(.primary01)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

