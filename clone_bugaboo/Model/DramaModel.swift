//
//  DramaModel.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 10/8/2567 BE.
//

import Foundation

struct DramaModel: Identifiable , Hashable {
    let id: UUID = .init()
    let name : String
    let descrip: String
    let image: String
    let url: String
}

enum DramaSectionModel: Identifiable {
    case OnAir(model: [DramaModel])
    case BugabooInter(model: [DramaModel])
    case Drama_New(model: [DramaModel])
    case Highlights(model: [DramaModel])
    case DramaReruns(model: [DramaModel])
    case DramaSoundtrack(model: [DramaModel])
    case Dramaynopsis(model: [DramaModel])
    
    var id: String {
        switch self {
        case .OnAir:
            return "ละครออนแอร์"
        case .BugabooInter:
            return "BUGABOO INTER"
        case .Drama_New:
            return "ละครช่อง 7HD ตอนล่าสุด"
        case .Highlights:
            return "ไฮไลท์ละคร"
        case .DramaReruns:
            return "ละครย้อนหลังช่อง 7HD"
        case .DramaSoundtrack:
            return "เพลงประกอบละคร"
        case .Dramaynopsis:
            return "เรื่องย่อละคร"
        }
    }
}

extension DramaSectionModel: Hashable {
    static func == (lhs: DramaSectionModel, rhs: DramaSectionModel) -> Bool {
        // Implement equality check based on your requirements
        switch (lhs, rhs) {
        case (.OnAir, .OnAir),
             (.BugabooInter, .BugabooInter),
             (.Drama_New, .Drama_New),
            (.Highlights, .Highlights),
             (.DramaReruns, .DramaReruns),
            (.DramaSoundtrack, .DramaSoundtrack),
             (.Dramaynopsis, .Dramaynopsis):
            return true
        default:
            return false
        }
    }

    func hash(into hasher: inout Hasher) {
        // Use the id property for hashing
        hasher.combine(id)
    }
}
