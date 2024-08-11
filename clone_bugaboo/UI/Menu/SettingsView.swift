//
//  SettingsView.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 10/8/2567 BE.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    Button(action: {
                      
                    }) {
                        MenuRow(imageName: "icon-menu-cookies", title: "ตั้งค่าคุกกี้")
                    }
                    
                    Button(action: {

                    }) {
                        MenuRow(imageName: "icon-menu-document", title: "ข้อตกลงและเงื่อนไขการใช้บริการ")
                    }
                    
                    Button(action: {

                    }) {
                        MenuRow(imageName: "request-form-1", title: "แจ้งขอใช้สิทธิในการดำเนินการเกี่ยวกับข้อมูลส่วนบุคคล")
                    }
                    
                    Button(action: {

                    }) {
                        MenuRow(imageName: "data-breach", title: "แจ้งข้อมูลส่วนบุคคลรั่วไหล")
                    }
                    
                    Button(action: {

                    }) {
                        MenuRow(imageName: "icon-menu-privacy1", title: "นโยบายความเป็นส่วนตัว")
                    }
                    
                    Button(action: {

                    }) {
                        MenuRow(imageName: "icons8-phone-24", title: "ติดต่อเรา")
                    }
                    
                    Button(action: {

                    }) {
                        MenuRow(imageName: "icons8-bell-24", title: "กิจกรรมสด")
                    }
                }
                
                Section {
                    Text("เวอร์ชั่นปัจจุบัน 7.25.6(7)")
                        .foregroundColor(.gray)
                }
            }
            .navigationBarTitle("ตั้งค่า", displayMode: .inline)
        }
    }
}



struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
