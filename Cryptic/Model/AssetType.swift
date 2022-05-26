//
//  AssetType.swift
//  Cryptic
//
//  Created by 김정민 on 2022/05/26.
//

import Foundation

struct AssetType: Codable, Identifiable, Equatable {
    var id: String
    var name: String
    var symbol: String
    var changePercent24Hr: String
    var marketCapUsd: String
    var priceUsd: String
}
