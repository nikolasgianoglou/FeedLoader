//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Nikolas Gianoglou Coelho on 23/11/26.
//

import XCTest

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
}
