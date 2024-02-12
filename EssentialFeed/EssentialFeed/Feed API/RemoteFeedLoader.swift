//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Nikolas Gianoglou on 07/02/24.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (Error?, HTTPURLResponse?) -> Void)
}

public final class RemoteFeedLoader {
    
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case noConnectivity
        case invalidData
    }
    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load(completion: @escaping (Error) -> Void) {
        client.get(from: url) { error, response in
            if let response = response, response.statusCode != 200 {
                completion(.invalidData)
            } else {
                completion(.noConnectivity)
            }
        }
    }
}


