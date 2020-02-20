//
//  Lab2Tests.swift
//  Lab2Tests
//
//  Created by Gabrielle Good
//  Copyright © 2020 gabrielle. All rights reserved.
//

import XCTest
@testable import Lab2

class Lab2Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testListEntryGood() {
        //making sure the entry works
        let testEntry = ListItem.init(title: "The Awakening", author: "Kate Chopin")
        XCTAssertNotNil(testEntry)
        
        let testEntry2 = ListItem.init(title: "Of Mice and Men", author: "John Steinback")
        XCTAssertNotNil(testEntry2)
    }

    func testListEntryEmpty() {
        //testing for empty entries
        let noTitle = ListItem.init(title: "", author: "Chimamanda Ngozi Adichie")
        XCTAssertNil(noTitle)
        
        let none = ListItem.init(title: "", author: "")
        XCTAssertNil(none)
        
        let noAuthor = ListItem.init(title: "The Call of the Wild", author: "")
        XCTAssertNil(noAuthor)
        }
    
    func testListCount(){
        //testing the count of the list
        let bookOne = ListItem.init(title: "Tender was the Night", author: "F. Scott Fitzgerald")
        let bookTwo = ListItem.init(title: "The Farm", author: "Joanne Ramos")
        let list = newList.init()
        XCTAssertEqual(0, list.books.count)
        list.addItem(entry: bookOne!)
        XCTAssertEqual(1, list.books.count)
        list.addItem(entry: bookTwo!)
        XCTAssertEqual(2, list.books.count)
        
    }
    
    func testReturnCount(){
    //making sure manual count and count are the same
        let bookOne = ListItem.init(title: "Gone Girl", author: "Gillian Flynn")
        let list = newList.init()
        list.addItem(entry: bookOne!)
        XCTAssertEqual(1, list.returnCount())
    }
}

