//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Nikolas Gianoglou Coelho on 20/11/26.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
