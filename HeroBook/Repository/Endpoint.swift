//
//  Endpoint.swift
//  HeroBook
//
//  Created by onakama on 2023/01/15.
//

import Foundation

public enum Endpoint {
    case character
}

extension Endpoint {
    private var value: String {
        switch self {
        case .character:
            return "/v1/public/comics"
        }
    }
}

extension Endpoint {
    var domain: Domain {
        return .marvel
    }
    
    var path: String {
        return domain.url + value
        }


    public func get() -> String {
        return path
    }
}
