//
//  KataRomanNumeralsTests.swift
//  KataRomanNumeralsTests
//
//  Created by José Servet Font on 8/6/16.
//  Copyright © 2016 ByBDesigns. All rights reserved.
//

import XCTest
@testable import KataRomanNumerals

class KataRomanNumeralsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock {
//            // Put the code you want to measure the time of here.
//        }
//    }
	
	func testOne() {
		XCTAssert(1.roman == "I")
	}
	
	func testTwo() {
		XCTAssert(2.roman == "II")
	}
	
	func testThree() {
		XCTAssert(3.roman == "III")
	}
	
	func testFour() {
		XCTAssert(4.roman == "IV")
	}
	
	func testFive() {
		XCTAssert(5.roman == "V")
	}
	
	func testSix() {
		XCTAssert(6.roman == "VI")
	}
	
	func testSeven() {
		XCTAssert(7.roman == "VII")
	}
	
	func testTen() {
		XCTAssert(10.roman == "X")
	}
	
	func testNine() {
		XCTAssert(9.roman == "IX")
	}
	
	func testEleven() {
		XCTAssert(11.roman == "XI")
	}
	
	func testThirtyNine() {
		XCTAssert(39.roman == "XXXIX")
	}
	
	func testFiftySix() {
		XCTAssert(56.roman == "LVI")
	}
	
	func testEightySeven() {
		XCTAssert(87.roman == "LXXXVII")
	}
	
	func testOneHundred() {
		XCTAssert(100.roman == "C")
	}
	
	func testNinetyNine() {
		XCTAssert(99.roman == "XCIX")
	}
	
//	func testFortyTwo() {
//		XCTAssert(42.roman == "XLII")
//	}
}
