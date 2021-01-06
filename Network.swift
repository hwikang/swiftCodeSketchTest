//
//  Network.swift
//  test
//
//  Created by Hwi kang on 2021/01/06.
//

import Foundation
import Apollo
class Network {
  static let shared = Network()
//    private let requestURL = URL(string: "https://dev-apiv1.luxrobo.com/gateway/graphql")

  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://dev-apiv1.luxrobo.com/gateway/graphql")!)
}
