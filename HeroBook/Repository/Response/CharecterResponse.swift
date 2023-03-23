//
//  CharecterResponse.swift
//  HeroBook
//
//  Created by onakama on 2023/01/18.
//

import Foundation

public struct CharecterResponse: Codable {
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

    struct Url: Codable {
        let type: String?
        let url: String?
    }

    struct Thumbnail: Codable {
        let path: String?
        let extensionString: String?

        enum CodingKeys: String, CodingKey {
            case path
            case extensionString = "extension"
        }
    }

    struct Detail: Codable {
        let available: Int?
        let returned: Int?
        let collectionURI: String?
        let items: [Item?]?
    }

    struct Item: Codable {
        let resourceURI: String
        let name: String
        let type: String?
    }
}
