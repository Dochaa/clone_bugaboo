//
//  SearchView.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 9/8/2567 BE.
//

import SwiftUI

struct SearchView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var searchText = ""

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        .padding(4)
                }
                
                HStack {
                    TextField("", text: $searchText)
                        .padding(8)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal, 8)
                    
                    if !searchText.isEmpty {
                        Button(action: {
                            searchText = ""
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing, 8)
                    }
                }
                .background(Color(UIColor.systemGray6))
                .cornerRadius(8)
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("ยกเลิก")
                        .bold()
                        .foregroundColor(.black)
                }
                .padding(.trailing, 8)
            }
            .padding()
            
            Spacer()
            
            VStack {
                Image(systemName: "doc.text.magnifyingglass")
                    .font(.system(size: 88))
                    .foregroundColor(.primary03)
                
                Text("กรุณาใส่คำที่ต้องการค้นหา")
                    .foregroundColor(.primary03)
                    .padding(.top, 16)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)  
    }
}

#Preview {
    SearchView()
}


#Preview {
    SearchView()
}

