//
//  CharecterResponse.swift
//  HeroBook
//
//  Created by onakama on 2023/01/18.
//

import Foundation

struct CharecterResponse: Codable, Equatable{
    let id: Int?
    let name: String?
    let description: String?
//    let modified: Date
    let resourceURI: String?
    let urls: [Url?]
    let thumbnail: Thumbnail?
    let comics: Detail?
    let stories: Detail?
    let events: Detail?
    let series: Detail?

    struct Url: Codable, Equatable {
        let type: String?
        let url: String?
    }

    struct Thumbnail: Codable, Equatable {
        let path: String?
        let extensionString: String?

        enum CodingKeys: String, CodingKey {
            case path
            case extensionString = "extension"
        }
    }

    struct Detail: Codable, Equatable {
        let available: Int?
        let returned: Int?
        let collectionURI: String?
        let items: [Item?]?
    }

    struct Item: Codable, Equatable {
        let resourceURI: String
        let name: String
        let type: String?
    }
}
