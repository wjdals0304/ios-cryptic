//
//  App+Injection.swift
//  Cryptic
//
//  Created by 김정민 on 2022/05/27.
//
import Foundation
import Resolver

extension Resolver: ResolverRegistering {
  public static func registerAllServices() {
      defaultScope = .graph
    register { URLSession(configuration: .default) }
    register { NetworkService() }.implements(NetworkServiceProtocol.self)
    register { URLComponentsService() }
    register { AssetService() }
    register { Asset.ViewModel() }
  }
}
