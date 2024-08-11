//
//  HeaderView.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 10/8/2567 BE.
//

import SwiftUI

struct HeaderView: View {
    @State private var searchText = ""
    @State private var isActive = false
    
    var body: some View {
        HStack {
            Image("bugaboo2021-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 20)

            Spacer()
            
            NavigationLink(destination: SearchView(), isActive: $isActive) {
                  Image(systemName: "magnifyingglass")
                      .font(.system(size: 24))
                      .foregroundColor(Color.primary01)
                      .padding(4)
              }
            
            
            Image("shop_bugabootv_with_labal-icon")
                .font(.system(size: 24))
                .foregroundColor(Color.blue)
                .padding(4)

            Image("icon-menu-ch7live")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .padding(4)
        }
        .padding([.leading, .trailing])
        .background(Color.white)
    }
}



#Preview {
    HeaderView()
}
