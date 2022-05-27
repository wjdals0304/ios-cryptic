//
//  AssetService.swift
//  Cryptic
//
//  Created by 김정민 on 2022/05/26.
//

import Foundation


// MARK: - AssetServiceProtocol


// MARK: - AssetService
final class AssetService {
  @Injected private var networkService: NetworkServiceProtocol
  @Injected private var urlComponentsService: URLComponentsService
  
}

extension AssetService {
    func fetchAssets() async throws -> AssetList {
        guard let url = urlComponentsService.makeCryptoCurrencyComponents().url else {
            throw AppError.badURL(description: "The URL is not valid. Please try again later.")
        }
        do {
            let data = try await networkService.fetch(with: url)
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            guard let decodedResponse = try? decoder.decode(AssetList.self, from: data) else {
                throw AppError.parsing(description: "Parsing data failed, please try again later.")
            }
            return decodedResponse

        } catch {
            throw error
        }
        
    
    }
    
    
}
