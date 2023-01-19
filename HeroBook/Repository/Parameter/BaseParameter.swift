//
//  BaseParameter.swift
//  HeroBook
//
//  Created by onakama on 2023/01/15.
//

import Foundation

struct BaseParameter: Parameter {
    var publicKey: String {
        guard let publicKey = Bundle.main.object(forInfoDictionaryKey: "API-PublicKey") as? String else {
            fatalError("publicKey get error")
        }
        return publicKey
    }
    
    var secretKey: String {
        guard let secretKey = Bundle.main.object(forInfoDictionaryKey: "API-SecretKey") as? String else {
            fatalError("publicKey get error")
        }
        return secretKey
    }
    
    var timeStamp = "1"
    
    var hash: String {
        return "\(timeStamp)\(secretKey)\(publicKey)".md5!
    }
}

extension BaseParameter {
    func get() -> String {
        return "ts=\(timeStamp)&apikey=\(publicKey)&hash=\(hash)"
    }
}
