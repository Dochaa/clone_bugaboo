//
//  ContentView.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 9/8/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationView {  // Wrap everything in a NavigationView
            VStack(spacing: -6) {
                Spacer(minLength: 50)
                
                HeaderView()  // HeaderView now supports NavigationLink
                
                TabView(selection: $selectedTab) {
                    HomeView()
                        .tabItem {
                            iconWithColor(imageName: "icons8-home", color: .blue, selectedTab: $selectedTab, tag: 0)
                            Text("หน้าหลัก")
                        }
                        .tag(0)
                    
                    DramaView()
                        .tabItem {
                            iconWithColor(imageName: "icon-menu-drama", color: .blue, selectedTab: $selectedTab, tag: 1)
                            Text("ละคร")
                        }
                        .tag(1)
                    
                    SeriesView()
                        .tabItem {
                            iconWithColor(imageName: "icon-menu-series", color: .blue, selectedTab: $selectedTab, tag: 2)
                            Text("ซีรีส์")
                        }
                        .tag(2)
                    
                    BugabooOriginalView()
                        .tabItem {
                            iconWithColor(imageName: "icon-menu-bugaboo", color: .blue, selectedTab: $selectedTab, tag: 3)
                            Text("ออริจินัล")
                        }
                        .tag(3)
                    
                    MenuView()
                        .tabItem {
                            iconWithColor(imageName: "icons-hamburger", color: .blue, selectedTab: $selectedTab, tag: 4)
                            Text("เมนู")
                        }
                        .tag(4)
                }
                .padding(.top, 1)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
    
    private func iconWithColor(imageName: String, color: Color, selectedTab: Binding<Int>, tag: Int) -> some View {
        Image(imageName)
            .renderingMode(.template)
            .foregroundColor(selectedTab.wrappedValue == tag ? color : .gray)
            .fixedSize()
            .font(.system(size: 10))
    }
}

#Preview {
    ContentView()
}


#Preview {
    ContentView()
}
