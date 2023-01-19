//
//  CharacterRepository.swift
//  HeroBook
//
//  Created by onakama on 2023/01/19.
//

import Foundation
public enum CharacterRepository {
    static func fetchCharacter() async -> CharecterResponse {
        try! await CharacterRequest().execute()
    }
}
