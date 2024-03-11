//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Nikolas Gianoglou on 04/03/24.
//

import XCTest

class LocalFeedLoader {
    
    init(store: FeedStore) {
        
    }
}

//Helper class representing the framework side to help us define the abstract interface the Use Case needs for its collaborator
class FeedStore {
    var deleteCachedFeedCallCount = 0
}
class CacheFeedUseCaseTests: XCTestCase {
    
    func test_init_doesNotDeletecacheUponCreation() {
        let store = FeedStore()
        let _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }
}
