//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Nikolas Gianoglou on 05/02/24.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
