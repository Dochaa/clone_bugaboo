//
//  ProfileView.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 9/8/2567 BE.
//

import SwiftUI

struct MenuView: View {
    @State private var selectedMenu: String? = nil
    
    var body: some View {
        
        NavigationStack {
            List {

                VStack(alignment: .center) {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(.top, 20)
                    
                    Button(action: {

                    }) {
                        Text("เข้าสู่ระบบ")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                    }
                    .padding(.bottom, 20)
                    
                }
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray6))
                
                Section {
                    Button(action: {
                        selectedMenu = "Shop"
                    }) {
                        MenuRow(imageName: "shop_bugabootv_with_labal-icon", title: "BUGABOO SHOP")
                    }
                }
                
                Section {
                    Button(action: {
                        selectedMenu = "CH7Live"
                    }) {
                        MenuRow(imageName: "icon-menu-ch7live", title: "ดูช่อง 7HD ออนไลน์")
                    }
                    Button(action: {
                        selectedMenu = "Drama"
                    }) {
                        MenuRow(imageName: "icon-menu-drama", title: "ละคร")
                    }
                    Button(action: {
                        selectedMenu = "Series"
                    }) {
                        MenuRow(imageName: "icon-menu-series", title: "ซีรีส์")
                    }
                    Button(action: {
                        selectedMenu = "News"
                    }) {
                        MenuRow(imageName: "icon-menu-news", title: "ข่าว")
                    }
                    Button(action: {
                        selectedMenu = "BugabooOriginal"
                    }) {
                        MenuRow(imageName: "icon-menu-bugaboo", title: "BUGABOO ORIGINAL")
                    }
                    Button(action: {
                        selectedMenu = "Ch7HDOriginal"
                    }) {
                        MenuRow(imageName: "icon-menu-ch7", title: "Ch7HD ORIGINAL")
                    }
                    Button(action: {
                        selectedMenu = "Variety"
                    }) {
                        MenuRow(imageName: "icon-menu-variety", title: "VARIETY")
                    }
                    Button(action: {
                        selectedMenu = "Podcast"
                    }) {
                        MenuRow(imageName: "icon-menu-podcast", title: "พอดแคสต์")
                    }
                    Button(action: {
                        selectedMenu = "LiveSport"
                    }) {
                        MenuRow(imageName: "icon-menu-livesport", title: "ถ่ายทอดสดกีฬา")
                    }
                    Button(action: {
                        selectedMenu = "Movie"
                    }) {
                        MenuRow(imageName: "icon-menu-movie", title: "ภาพยนตร์")
                    }
                    Button(action: {
                        selectedMenu = "Entertainment"
                    }) {
                        MenuRow(imageName: "icon-menu-entertainment", title: "บันเทิง")
                    }
                    Button(action: {
                        selectedMenu = "Sport"
                    }) {
                        MenuRow(imageName: "icon-menu-sport", title: "กีฬา")
                    }
                    Button(action: {
                        selectedMenu = "Lotto"
                    }) {
                        MenuRow(imageName: "icon-menu-lotto", title: "ลอตโต")
                    }
                    Button(action: {
                        selectedMenu = "Lifestyle"
                    }) {
                        MenuRow(imageName: "icon-menu-lifestyle", title: "LIFE STYLE")
                    }
                }
                
                Section {
                    Button(action: {
                        selectedMenu = "Settings"
                    }) {
                        MenuRow(imageName: "icons8-setting", title: "ตั้งค่า")

                    }
                }
                
                Section {
                    Button(action: {
                        // Action สำหรับปุ่มเข้าสู่ระบบด้านล่าง
                    }) {
                        Text("เข้าสู่ระบบ")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                }
            }
            .listStyle(GroupedListStyle())
//            .navigationTitle("BUGABOO TV")
            .background(
                NavigationLink(destination: destinationView(for: selectedMenu), tag: selectedMenu ?? "", selection: $selectedMenu) {
                    EmptyView()
                }
                .hidden()
            )
        }
    }
    
    @ViewBuilder
    private func destinationView(for menu: String?) -> some View {
        switch menu {
        case "Shop":
            ShopView()
        case "CH7Live":
            CH7LiveView()
        case "Drama":
            DramaView()
        case "Series":
            SeriesView()
        case "News":
            NewsView()
        case "BugabooOriginal":
            BugabooOriginalView()
        case "Ch7HDOriginal":
            Ch7HDOriginalView()
        case "Variety":
            VarietyView()
        case "Podcast":
            PodcastView()
        case "LiveSport":
            LiveSportView()
        case "Movie":
            MovieView()
        case "Entertainment":
            EntertainmentView()
        case "Sport":
            SportView()
        case "Lotto":
            LottoView()
        case "Lifestyle":
            LifestyleView()
        case "Settings":
            SettingsView()
        default:
            EmptyView()
        }
    }
}

struct MenuRow: View {
    var imageName: String
    var title: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .foregroundColor(Color.primary01)
            Text(title)
                .foregroundColor(.primary)
            Spacer()
        }
        .padding(.vertical, 8)
    }
}

    // ตัวอย่างวิวแต่ละหน้าที่จะถูกนำทางไป
    struct ShopView: View {
        var body: some View {
            Text("BUGABOO SHOP")
        }
    }
    
    struct CH7LiveView: View {
        var body: some View {
            Text("ดูช่อง 7HD ออนไลน์")
        }
    }
    
    
    struct NewsView: View {
        var body: some View {
            Text("ดูช่อง 7HD ออนไลน์")
        }
    }
    
    struct Ch7HDOriginalView: View {
        var body: some View {
            Text("ดูช่อง 7HD ออนไลน์")
        }
    }
    
    struct VarietyView: View {
        var body: some View {
            Text("ดูช่อง 7HD ออนไลน์")
        }
    }

struct PodcastView: View {
    var body: some View {
        Text("ดูช่อง 7HD ออนไลน์")
    }
}

struct LiveSportView: View {
    var body: some View {
        Text("ดูช่อง 7HD ออนไลน์")
    }
}

struct MovieView: View {
    var body: some View {
        Text("ดูช่อง 7HD ออนไลน์")
    }
}

struct EntertainmentView: View {
    var body: some View {
        Text("ดูช่อง 7HD ออนไลน์")
    }
}

struct SportView: View {
    var body: some View {
        Text("ดูช่อง 7HD ออนไลน์")
    }
}

struct LottoView: View {
    var body: some View {
        Text("ดูช่อง 7HD ออนไลน์")
    }
}

struct LifestyleView: View {
    var body: some View {
        Text("ดูช่อง 7HD ออนไลน์")
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
