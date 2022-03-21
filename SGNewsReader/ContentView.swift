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
        ScrollView{
            Text(feed.title)
            Text(feed.link)
            Text(feed.description)
            Text(feed.pubDate?.description ?? "")
            AsyncImage(url: feed.imageURL) { image in
                image.resizable()
            } placeholder: {
                Image(systemName: "photo")
            }
            .frame(width: 32, height: 32)
            Text("\(feed.items.count)")
            Divider()
            Group {
                Text(item.title)
                Text(item.pubDate?.description ?? "")
                Text(item.link)
                Text(item.description)
                AsyncImage(url: URL(string: item.imageLink)) { image in
                    image.resizable()
                        .scaledToFit()
                } placeholder: {
                    Image(systemName: "photo")
                }
                
                Text(item.author)
                Text(item.content)
            }
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
