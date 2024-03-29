//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Nikolas Gianoglou on 26/02/24.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}
