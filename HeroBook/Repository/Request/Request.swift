//
//  Request.swift
//  HeroBook
//
//  Created by onakama on 2023/01/15.
//

import Foundation

protocol Request {
    associatedtype Response: Codable
    associatedtype Parameters: Parameter
    
    var parameters: Parameters { get }
    var endpoint: Endpoint { get }
    var path: String { get }
}

extension Request {
    var path: String { return endpoint.path }
}

extension Request {
    func execute() async throws -> Self.Response {
        return try await APIClient.execute(self)
    }
}
