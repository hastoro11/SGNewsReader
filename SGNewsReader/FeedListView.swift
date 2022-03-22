//
//  FeedListView.swift
//  SGNewsReader
//
//  Created by Gabor Sornyei on 2022. 03. 21..
//

import SwiftUI
import SGFeedParser

// MARK: - FeedListView
struct FeedListView: View {
    var feeds: [Feed]
    
    var body: some View {
        List {
            DisclosureGroup(isExpanded: .constant(true)) {
                FeedRow(icon: "circle.inset.filled", color: .blue, imageURL: nil, title: "Unread", count: 234)
                FeedRow(icon: "bookmark", color: .orange, imageURL: nil, title: "Bookmarked", count: 12)
            } label: {
                Text("SMART FEEDS")
                    .foregroundColor(.secondary)
            }
            .listRowSeparator(.hidden)

            DisclosureGroup(isExpanded: .constant(true)) {
                ForEach(feeds) { feed in
                    HStack {
                        FeedRow(icon: nil, color: nil, imageURL: feed.imageURL, title: feed.title, count: feed.items.count)
//                        AsyncImage(
//                            url: feed.imageURL) { image in
//                                image.resizable()
//                            } placeholder: {
//                                Image(systemName: "photo")
//                            }
//                            .frame(width: 24, height: 24)
//                        Text(feed.title)
//                        Spacer()
//                        Text("\(feed.items.count)")
//                            .countCaption()
                    }
                }
            } label: {
                HStack {
                    Label("News".uppercased(), systemImage: "newspaper")
                        .foregroundColor(.secondary)
                    Spacer()
                    Text("122")
                        .countCaption()
                }
            }
            .listRowSeparator(.hidden)
            
        }
        .listStyle(.plain)
        .navigationTitle("Feeds")
    }
}

// MARK: - FeedRow
extension FeedListView {
    struct FeedRow: View {
        var icon: String?
        var color: Color?
        var imageURL: URL?
        var title: String
        var count: Int
        var body: some View {
            HStack {
                if let url = imageURL {
                    AsyncImage(
                        url: url) { image in
                            image.resizable()
                        } placeholder: {
                            Image(systemName: "photo")
                        }
                        .frame(width: 24, height: 24)
                } else if let icon = icon, let color = color {
                    Image(systemName: icon)
                        .font(.body)
                        .foregroundColor(color)
                }
                Text(title)
                Spacer()
                Text("\(count)")
                    .countCaption()
                    .opacity(count == 0 ? 0 : 1)
            }
        }
    }
}

// MARK: - Preview
struct FeedListView_Previews: PreviewProvider {
    static var feeds = TestData.feeds
    static var feed = TestData.makeFeed()
    static var previews: some View {
        NavigationView {
            FeedListView(feeds: feeds)
        }
        NavigationView {
            FeedListView(feeds: feeds)
        }
        .preferredColorScheme(.dark)
        
        Group {
            FeedListView.FeedRow(imageURL: feed.imageURL, title: feed.title, count: feed.items.count)
                .padding()
                .previewLayout(.sizeThatFits)
            FeedListView.FeedRow(icon: "bookmark", color: .orange, title: "Bookmarked", count: 123)
                .padding()
                .previewLayout(.sizeThatFits)
        }
    }
}
