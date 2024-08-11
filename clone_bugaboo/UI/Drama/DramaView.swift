//
//  LiveView.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 9/8/2567 BE.
//

import SwiftUI

struct DramaView: View {
    @StateObject private var viewModel: DramaViewModel
    
    init(viewModel: DramaViewModel = DramaViewModel()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    CarouselView()
                        .frame(height: 250)
                        .padding(.top)
                    
                    SectionView(title: "ละครออนแอร์", items: Array(1...10))
                    
                    SectionView2(title: "BUGABOO INTER", items: Array(11...20))
                    
                    SectionView3(title: "ละครช่อง 7HD ตอนล่าสุด", items: Array(21...30))
                    
                    SectionView3(title: "ไฮไลท์ละคร", items: Array(21...30))
                    
                    SectionView2(title: "ละครย้อนหลังช่อง 7HD", items: Array(11...20))
                    
                    SectionView3(title: "เพลงประกอบละคร", items: Array(21...30))
                    
                    SectionView3(title: "เรื่องย่อละคร", items: Array(21...30))
                    
                }
                //                .padding(.bottom, 20)
            }
            //            .navigationTitle("Home")
            .foregroundColor(.primary01)
        }
    }
}
//        NavigationStack{
//            ScrollView {
//                VStack(spacing: 10){
//                    let random = viewModel.randomDrama.randomElement()
//                    NavigationLink {
//                        DramarDetailView(DramaModel: random ?? viewModel.defaulValue)
//                    } label: {
//                        Image(random?.image ?? "moneyMovers")
//                            .resizable()
//                            .scaledToFill()
//                            .frame(width: rect().width,height: rect().height/2)
//                            .clipped()
//                            .overlay {
//                                ZStack{
//                                    LinearGradient(colors: [.black.opacity(0.1),.clear,.black.opacity(0.1),.black.opacity(0.5)], startPoint: .top, endPoint: .bottom)
//                                }
//                            }
//                            .padding(.vertical,15)
//                    }
//                    listView()
//                }
//            }
//            .scrollIndicators(.hidden)
//            .toolbar {
//                ToolbarItem(placement: .navigation) {
//                    HStack{
//                        Button(action: {}, label: {
//                            Text("ซีนร")
//                                .font(.largeTitle)
//                                .fontWeight(.bold)
//                                .foregroundStyle(.white)
//                        })
//                        Spacer()
//                    }
//                }
//            }
//        }
//    }
//    
//    @ViewBuilder
//    func listView() -> some View {
//        ForEach(viewModel.DramaSection) { section in
//            VStack(spacing:15){
//                HStack{
//                    Text(section.id.capitalizesFirst())
//                        .foregroundStyle(Color.white)
//                        .font(.title3)
//                        .fontWeight(.semibold)
//                        .frame(maxWidth: .infinity,alignment: .leading)
//                }
//                .padding(.horizontal,15)
//                ScrollView(.horizontal) {
//                    HStack(spacing: 12){
//                        switch section {
//                        case .OnAir(let model):
//                            navigateToDrama(model: model)
//                        case .BugabooInter( let model):
//                            navigateToDrama(model: model)
//                        case .Drama_New(let model):
//                            navigateToDrama(model: model)
//                        case .Highlights(let model):
//                            navigateToDrama(model: model)
//                        case .DramaReruns(let model):
//                            navigateToDrama(model: model)
//                        case .DramaSoundtrack(model: let model):
//                            navigateToDrama(model: model)
//                        case .Dramaynopsis(model: let model):
//                            navigateToDrama(model: model)
//                        }
//                    }
//                    .padding(.horizontal,15)
//                }
//                .scrollIndicators(.hidden)
//            }
//        }
//
//    }
//    
//    @ViewBuilder
//    func imageView(list: DramaModel) -> some View {
//        VStack(spacing: 8) {
//            Image(list.image)
//                .resizable()
//                .scaledToFill()
//                .frame(width: rect().width/2.5, height: rect().width/2.5)
//                .clipShape(RoundedRectangle(cornerRadius: 20))
//        }
//    }
//    
//    @ViewBuilder
//    private func navigateToDrama(model: [DramaModel]) -> some View {
//        ForEach(model, id: \.self) { model in
//            NavigationLink {
//                DramarDetailView(DramaModel: model)
//            } label: {
//                imageView(list: model)
//            }
//        }
//    }
//    
//}



struct DramaView_Previews: PreviewProvider {
    static var previews: some View {
        DramaView()
    }
}
