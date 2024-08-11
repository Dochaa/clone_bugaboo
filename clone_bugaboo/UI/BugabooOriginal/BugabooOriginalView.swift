//
//   BugabooOriginalView.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 9/8/2567 BE.
//

import SwiftUI

struct BugabooOriginalView: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {

                    CarouselView()
                        .frame(height: 250)
                        .padding(.top)

                    SectionView(title: "Bugaboo Original", items: Array(1...10))

                    SectionView3(title: "Bugaboo Original ตอนล่าสุด", items: Array(1...10))

                    SectionView3(title: "Bugaboo Original ยอดนิยม", items: Array(1...10))
                    
                    SectionView2(title: "Bugaboo Original ทั้งหมด", items: Array(1...10))
                    
                    
                }
//                .padding(.bottom, 20)
            }
//            .navigationTitle("Home")
            .foregroundColor(.primary01)
        }

    }
}

struct BugabooOriginalView_Previews: PreviewProvider {
    static var previews: some View {
        BugabooOriginalView()
    }
}


