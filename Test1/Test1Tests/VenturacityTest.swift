//
//  VenturacityTest.swift
//  Test1
//
//  Created by Senthil Kumar Kuppuraj on 6/3/17.
//  Copyright © 2017 venturacity. All rights reserved.
//

import XCTest
@testable import Test1


class VenturacityTest: XCTestCase {
    
    var vc = ViewController()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.performSelector(onMainThread:#selector(self.vc.loadView), with: nil, waitUntilDone: true)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func findAreaOfRectangle() {
    
        XCTAssertNotEqual(vc.calculateAreaOfRectangle(inputArray: [1,4,1,2,3,4]), 9, "Not Equal")
        XCTAssertEqual(vc.calculateAreaOfRectangle(inputArray: [1,4,1,2,3,4]), 6, "Equal")
        
    }
   
    
    
}
