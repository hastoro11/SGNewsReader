//
//  SGNewsReaderTests.swift
//  SGNewsReaderTests
//
//  Created by Gabor Sornyei on 2022. 03. 18..
//

import XCTest
@testable import SGNewsReader

class SGNewsReaderTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testDate() {
        let str = "E, d MMM yyyy HH:mm:ss Z"
//        E, d MMM yyyy HH:mm:ss Z
//        let str = "E"
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en")
        formatter.dateFormat = str
        
        print(formatter.dateFormat)
        let dt = formatter.date(from: "Fri, 18 Mar 2022 17:04:19 GMT")
        formatter.calendar = Calendar.current
//        let dt = formatter.date(from: "Fri")
        print(dt)
        print(formatter.string(from: Date()))
    }

}
