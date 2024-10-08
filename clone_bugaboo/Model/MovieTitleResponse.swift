//
//  MovieTitleResponse.swift
//  clone_bugaboo
//
//  Created by Akaradach Choeychusri on 10/8/2567 BE.
//

import Foundation

struct MovieTitleResponse: Codable, Hashable {
    var results : [MovieDetailModel]
}

struct MovieDetailModel: Codable, Hashable {
    var id: Int?
    var overview: String?
    var title: String?
    var original_title: String?
    var poster_path: String?
    var release_date: String?
    var video: Bool?
    var vote_average: Float?
    var popularity: Double?
    var media_type: String?
    
}

