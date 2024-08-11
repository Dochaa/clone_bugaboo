//
//  DramaViewModel.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 11/8/2567 BE.
//

import Foundation
import Combine

final class DramaViewModel: ObservableObject {
    
    @Published var DramaSection: [DramaSectionModel] = []
    @Published var randomDrama: [DramaModel] = []
    
    private var service: DramaManagerDelegate
    
    init(service: DramaManagerDelegate = DramaManager()) {
        self.service = service
        Task(priority: .utility) {
            try await getDramaList()
        }
    }
    
    var defaulValue: DramaModel {
        return DramaModel(name: "CHRISTMAS MAZE MANIA", descrip: "Begin a festive journey in our Christmas maze game! Guide Santa using your mouse, touch, or keyboard through captivating mazes to bring joy to waiting children. Find optimal paths, deliver heartwarming gifts, and immerse yourself in holiday spirit across 15 challenging levels. Spread Christmas cheer in this enchanting game!", image: "christmasMaze", url: "https://html5.gamedistribution.com/fd8440d9ed374f06b745cb299cb61819/?gd_sdk_referrer_url=https://gamedistribution.com/Drama/christmas-maze-mania")
    }
    
}

// MARK: - API Response Handler
extension DramaViewModel {
    
    @MainActor
    func getDramaList() async throws {
        let OnAir = try await service.getOnAir()
        let BugabooInter = try await service.getBugabooInter()
        let Drama_New = try await service.getDrama_New()
        let Highlights = try await service.getHighlights()
        let DramaReruns = try await service.getDramaReruns()
        let DramaSoundtrack = try await service.getDramaSoundtrack()
        let Dramaynopsis = try await service.getDramaynopsis()
        let random = [OnAir,BugabooInter,Drama_New,Highlights,DramaReruns,DramaSoundtrack]
        randomDrama = random.randomElement() ?? []
        DramaSection.append(.OnAir(model: OnAir))
        DramaSection.append(.BugabooInter(model: BugabooInter))
        DramaSection.append(.Drama_New(model: Drama_New))
        DramaSection.append(.Highlights(model: Highlights))
        DramaSection.append(.DramaReruns(model: DramaReruns))
        DramaSection.append(.DramaSoundtrack(model: DramaSoundtrack))
        DramaSection.append(.Dramaynopsis(model: Dramaynopsis))
    }
    
}
