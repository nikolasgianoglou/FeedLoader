//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Nikolas Gianoglou on 05/02/24.
//

import Foundation

enum FeedLoaderResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (FeedLoaderResult) -> Void)
}
