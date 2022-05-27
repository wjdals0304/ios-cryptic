//
//  URLComponentsService.swift
//  Cryptic
//
//  Created by 김정민 on 2022/05/26.
//

import Foundation


struct URLComponentsService {
    func makeCryptoCurrencyComponents() -> URLComponents {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.coincap.io"
        components.path = "/v2/assets"

        components.queryItems = [
            URLQueryItem(name: "limit", value: "10")
        ]

        return components
    }
}
