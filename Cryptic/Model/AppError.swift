//
//  AppError.swift
//  Cryptic
//
//  Created by 김정민 on 2022/05/26.
//

import Foundation

enum AppError: Error, Equatable {
    case badURL(description: String)
    case parsing(description: String)
    case network(description: String)
    case noResponse(description: String)
    case unauthorized(description: String)
    case unexpectedStatusCode(description: String)
    
    var description: String {
        switch self {
        case .badURL(let value):
            return value
        case .parsing(let value):
            return value
        case .network(let value):
            return value
        case .noResponse(let value):
            return value
        case .unauthorized(let value):
            return value
        case .unexpectedStatusCode(let value):
            return value 
        }
    }
}
