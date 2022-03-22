//
//  TestData.swift
//  SGNewsReader
//
//  Created by Gabor Sornyei on 2022. 03. 21..
//

import Foundation
import SGFeedParser

struct TestData {
    
    static var feeds: [Feed] {
        [
            Feed(
                title: "Axios",
                link: "https://www.axios.com/top/",
                description: "Axios",
                language: "en-us",
                imageURL: URL(string: "https://static.axios.com/img/axios-site/favicon-32x32.png")!,
                pubDate: Util.buildDateFromString("Mon, 21 Mar 2022 07:10:48 +0000"),
                items: [makeFeedItem(), makeFeedItem(), makeFeedItem()]),
            Feed(
                title: "The Guardian",
                link: "https://www.theguardian.com/uk",
                description: "Latest news, sport, business, comment, analysis and reviews from the Guardian, the world's leading liberal voice",
                language: "en-gb",
                imageURL: URL(string: "https://assets.guim.co.uk/images/favicons/1fe70b29879674433702d5266abcb0d4/144x144.png")!,
                pubDate: Util.buildDateFromString("Mon, 21 Mar 2022 16:41:46 GMT"),
                items: [makeFeedItem(), makeFeedItem(), makeFeedItem()]),
            Feed(
                title: "Portfolio.hu - Összes hír",
                link: "https://www.portfolio.hu",
                description: "Összes hír - 20 legfrissebb hír",
                language: "hu-HU",
                imageURL: URL(string: "https://assets.portfolio.hu/images/favicon/apple-icon-114x114.png")!,
                pubDate: Util.buildDateFromString("Mon, 21 Mar 2022 18:06:16 +0100"),
                items: [makeFeedItem(), makeFeedItem(), makeFeedItem()]),
        ]
    }
    
    static func makeFeed() -> Feed {
        Feed(
            title: "Axios",
            link: "https://www.axios.com/top/",
            description: "Axios",
            language: "en-us",
            imageURL: URL(string: "https://static.axios.com/img/axios-site/favicon-32x32.png")!,
            pubDate: Util.buildDateFromString("Mon, 21 Mar 2022 07:10:48 +0000"),
            items: [makeFeedItem(), makeFeedItem(), makeFeedItem()])
    }
    
    static func makeFeedItem() -> FeedItem {
        FeedItem(
            title: "DHS watchdog calls for removal of ICE detainees due to \"egregious\" conditions in New Mexico facility",
            link: "https://www.axios.com/dhs-ice-detainees-removal-poor-living-conditions-2eaf60c7-14c0-46a5-9c0b-fb4d496227cf.html",
            description: "The Department of Homeland Security inspector general on Friday released a report calling for the \"immediate removal\" of all detainees from an Immigration and Customs Enforcement facility in New Mexico due to \"egregious\" living conditions.",
            author: "Oriana Gonzalez",
            imageLink: "https://images.axios.com/oiG9eWGulN_niAA7KZINelzO3Vg=/0x306:5964x3661/1280x720/2022/03/18/1647621228157.jpg",
            pubDate: Util.buildDateFromString("Mon, 21 Mar 2022 07:10:48 +0000"),
            content: "In the report, Cuffari's said detainees must be relocated until the facility can ensure \"adequate staffing and appropriate living conditions.\" DHS found that 53% of detainee cells had toilets and sinks that were \"non-functioning\" or \"clogged.\" Pictures in the report showed how these were moldy and \"full of human waste.\"")
    }
}
