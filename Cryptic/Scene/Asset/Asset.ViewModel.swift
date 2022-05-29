//
//  Asset.ViewModel.swift
//  Cryptic
//
//  Created by 김정민 on 2022/05/26.
//

import Foundation
import RxSwift

protocol AssetViewModelType {
    func fetchAssets() async throws
    var assetListGet: AssetList { get }
}

extension Asset {
    
    final class ViewModel {
        @Injected private var assetService: AssetService
        var assetList: AssetList = AssetList(data: [])
        
    }
}

extension Asset.ViewModel: AssetViewModelType {
    
    var assetListGet: AssetList {
        return assetList
    }
    
    func fetchAssets() async throws {
        do {
            let result = try await assetService.fetchAssets()
            self.assetList = result
        } catch {
            throw error
        }        
    }
    
}
