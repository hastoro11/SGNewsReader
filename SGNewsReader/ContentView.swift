//
//  ContentView.swift
//  SGNewsReader
//
//  Created by Gabor Sornyei on 2022. 03. 18..
//

import SwiftUI
import SGFeedParser

struct ContentView: View {
    var feed: Feed = TestData.feeds[0]
    var item = TestData.makeFeedItem()
    var body: some View {
        NavigationView {
            FeedListView(feeds: TestData.feeds)
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
