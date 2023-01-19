//
//  Parameter.swift
//  HeroBook
//
//  Created by onakama on 2023/01/19.
//

import Foundation

protocol Parameter: Codable {
    func get() -> String
}
