//
//  SectionView.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 9/8/2567 BE.
//

import SwiftUI

struct SectionView: View {
    let title: String
    let items: [Int]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text(title)
                    .font(.headline)
//                    .padding(.leading)
                
                Spacer()
                Button(action: {
                    
                }) {
                    Text("ดูเพื่อเติม >")
                        .font(.system(size: 14))
                    //                    .padding(.leading)
                }
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {
                    ForEach(items, id: \.self) { item in
                        VStack {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 140, height: 200)
                                .cornerRadius(4)
                            
                            Text("Show \(item)")
                                .font(.caption)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SectionView2: View {
    let title: String
    let items: [Int]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text(title)
                    .font(.headline)
//                    .padding(.leading)
                
                Spacer()
                Button(action: {
                    
                }) {
                    Text("ดูเพื่อเติม >")
                        .font(.system(size: 14))
                    //                    .padding(.leading)
                }
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {
                    ForEach(items, id: \.self) { item in
                        VStack {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 90, height: 150)
                                .cornerRadius(4)
                            
                            Text("Show \(item)")
                                .font(.caption)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SectionView3: View {
    let title: String
    let items: [Int]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text(title)
                    .font(.headline)
//                    .padding(.leading)
                
                Spacer()
                Button(action: {
                    
                }) {
                    Text("ดูเพื่อเติม >")
                        .font(.system(size: 14))
                    //                    .padding(.leading)
                }
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {
                    ForEach(items, id: \.self) { item in
                        VStack {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 220, height: 120)
                                .cornerRadius(4)
                            
                            Text("Show \(item)")
                                .font(.caption)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SectionViewTop10: View {
    let title: String
    let items: [Int]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary01)
                
                Spacer()
                
                Button(action: {
                  
                }) {
                    Text("ดูเพิ่มเติม >")
                        .font(.system(size: 14))
                        .foregroundColor(.primary01)
                }
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {
                    ForEach(items, id: \.self) { item in
                        ZStack(alignment: .bottomLeading) {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 140, height: 200)
                                .cornerRadius(4)
                            
                            ZStack {
//                                Circle()
//                                    .fill(Color.white.opacity(0.8))
//                                    .frame(width: 60, height: 60)
                                
                                Text("\(item)")
                                    .font(.system(size: 80))
                                    .fontWeight(.bold)
                                    .foregroundColor(.primary03)
//                                    .background(
//                                            RoundedRectangle(cornerRadius: 0)
//                                                .stroke(Color.blue, lineWidth: 10)
//                                        )
                            }
                            .offset(x: -10, y: 14)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}


