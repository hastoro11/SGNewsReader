//
//  Feed+Extension.swift
//  SGNewsReader
//
//  Created by Gabor Sornyei on 2022. 03. 21..
//

import Foundation
import SGFeedParser

extension Feed: Identifiable {
    public var id: String { link }
}

extension FeedItem: Identifiable {
    public var id: String { link }
}
