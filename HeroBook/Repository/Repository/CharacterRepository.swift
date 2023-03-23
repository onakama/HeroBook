//
//  CharacterRepository.swift
//  HeroBook
//
//  Created by onakama on 2023/01/19.
//

import Foundation
public enum CharacterRepository {
    static func fetch() async -> [CharecterResponse] {
        let response = try! await CharacterRequest().execute()
        return response.data.results
    }
}
