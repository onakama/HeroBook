//
//  CharacterRequest.swift
//  HeroBook
//
//  Created by onakama on 2023/01/18.
//

import Foundation

struct CharacterRequest: Request {
    typealias Parameters = BaseParameter
    typealias Response = BaseResponse<CharecterResponse>
    
    let parameters: BaseParameter = BaseParameter()
    let endpoint: Endpoint = .character
}
