//
//  Response.swift
//  HeroBook
//
//  Created by taisei.sumiyama on 2023/03/23.
//

import Foundation

struct BaseResponse<T: Codable>: Codable {
    let code: Int
    let status: String
    let data: baseResponseData
    
    struct baseResponseData: Codable {
        let offset: Int?
        let limit: Int?
        let total: Int?
        let count: Int?
        let results: [T]
    }
}
