//
//  APIClient.swift
//  HeroBook
//
//  Created by onakama on 2023/01/15.
//

import Foundation

enum APIClient {
    static func execute<T: Request>(_ request: T) async throws -> T.Response {
        let urlString = request.endpoint.get() + "?" + request.parameters.get()
        guard let url = URL(string: urlString) else {
            fatalError("create url failed")
        }
        
        do {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"

            let (data, urlResponse) = try await URLSession.shared.data(for: request)
            guard let httpStatus = urlResponse as? HTTPURLResponse else {
                fatalError("http failed")
            }

            switch httpStatus.statusCode {
                case 200 ..< 400:
                    let decoder = JSONDecoder()
                    guard let response = try? decoder.decode(T.Response.self, from: data) else {
                        fatalError("decode error")
                    }
                    print(response)

                    return response
                case 400... :
                    fatalError("sever error")
                default:
                    fatalError("sever error")
                    break
            }
            
        } catch {
            fatalError("リクエストエラー")
        }
    }
}
