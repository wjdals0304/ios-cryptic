//
//  NetworkService.swift
//  Cryptic
//
//  Created by 김정민 on 2022/05/26.
//

import Foundation
import Resolver

// MARK: - NetworkServiceProtocol
protocol NetworkServiceProtocol {
  func fetch(with endpoint: URL) async throws -> Data
}

// MARK: - NetworkService
class NetworkService {
  @Injected private var session: URLSession
}

extension NetworkService: NetworkServiceProtocol {
    
    func fetch(with endpoint: URL) async throws -> Data {
        
        var request = URLRequest(url: endpoint)
        request.httpMethod = RequestMethod.get.rawValue
        
        do {
            let (data, response) = try await URLSession.shared.data(from: request)
            guard let response = response as? HTTPURLResponse else { throw AppError.noResponse(description: "Unknown error") }
            
            switch response.statusCode {
            case 200...299 :
                return data
            case 401:
                throw AppError.unauthorized(description: "unauthorized")
            default:
                throw AppError.unexpectedStatusCode(description: "Unknown error")
            }
            
        } catch {
            throw AppError.unauthorized(description: "Unknown error")
        }
        
    }
    

    

    
}
