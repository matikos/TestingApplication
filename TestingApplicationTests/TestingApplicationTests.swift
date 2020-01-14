//
//  TestingApplicationTests.swift
//  TestingApplicationTests
//
//  Created by Your Host on 1/9/20.
//  Copyright © 2020 Mati Kos. All rights reserved.
//

import XCTest
@testable import TestingApplication

class TestingApplicationTests: XCTestCase {
    
    var Peter: Rabbit!
    var GeorgeStPierre: Rabbit!
    var Jakub: Rabbit!
    var Frazer: Rabbit!

    override func setUp() {
        Peter = Rabbit(type: .Biter, attackType: .Punch)
        GeorgeStPierre = Rabbit(type: .Kicker, attackType: .Kick)
        Jakub = Rabbit(type: .Biter, attackType: .Nibble)
        Frazer = Rabbit(type: .Puncher, attackType: .Punch)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        Peter = nil
        GeorgeStPierre = nil
        Jakub = nil
        Frazer = nil
    }
    
    func testTahtPuncherRabbitDoesMoreDamageToABitterRabbit() {
        Frazer.attack(enemy: Jakub)
        Frazer.attack(enemy: GeorgeStPierre)
        
        //who took more damage? Jakub or GeorgeStPiere
        XCTAssert(Jakub.health < GeorgeStPierre.health)
    }
    
    func tsetThatHealthIncreasesWhenRabbitTrains() {
        let starterHealth = Frazer.health
        Frazer.train()
        
        XCTAssert(starterHealth > Frazer.health)
    }
    
    func thatTrainedRabbitisHealthierThanRestedRabbit()
    {
        let starterHealth = Peter.health
        Peter.train()
        let trainedHealth = Peter.health - starterHealth
        Peter.rest()
        let restedHealth = Peter.health - trainedHealth
        
        XCTAssert(trainedHealth > restedHealth)
        
        
        
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
