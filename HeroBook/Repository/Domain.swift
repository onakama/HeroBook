//
//  Domain.swift
//  HeroBook
//
//  Created by onakama on 2023/01/15.
//

import Foundation

public enum Domain: URLConvertible{
    
    case marvel
    
    var value: String {
        switch self {
        case .marvel:
            guard let domain = Bundle.main.object(forInfoDictionaryKey: "API-Domain") as? String else {
                fatalError("undefine API domain")
            }
            return domain
        }
    }
    
    public var domain: String {
        return value
    }
}

public protocol URLConvertible {
    var scheme: String { get }
    var domain: String { get }
    var url: String { get }
}

public extension URLConvertible {

    var scheme: String {
        return "https"
    }

    var url: String {
        return "\(scheme)://\(domain)"
    }
}
