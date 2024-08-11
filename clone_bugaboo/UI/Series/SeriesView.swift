//
//  SeriesView.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 11/8/2567 BE.
//

import SwiftUI

struct SeriesView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {

                    CarouselView()
                        .frame(height: 250)
                        .padding(.top)

                    SectionView(title: "Only at Bugaboo", items: Array(1...10))

                    SectionView2(title: "ละครย้อนหลังช่อง 7HD", items: Array(11...20))

                    SectionView2(title: "ดูหนังฟรี", items: Array(1...10))
                    
                    SectionView2(title: "สารคดี", items: Array(1...10))
                    
                    
                }
//                .padding(.bottom, 20)
            }
//            .navigationTitle("Home")
            .foregroundColor(.primary01)
        }

    }
}

struct SeriesView_Previews: PreviewProvider {
    static var previews: some View {
        SeriesView()
    }
}
