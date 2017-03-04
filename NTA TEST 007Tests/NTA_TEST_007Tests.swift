//
//  NTA_TEST_007Tests.swift
//  NTA TEST 007Tests
//
//  Created by krizzly on 2/22/17.
//  Copyright © 2017 krizzly. All rights reserved.
//

import XCTest
@testable import NTA_TEST_007

class NTA_TEST_007Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
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
    

    // confirm the initializer returns a non nil Thermostat object
    func testThermostatInitilizationSuceeds()
    {
        // test cases for initializing thermostat. empty names/negative humitidy will cause nil return
        
        // zero humidity 
        let zeroHumidityThermo = Thermostat.init(name: "foo_name", label: "foo_label", id: "foo_id_0", is_online: true, target_temp_f: 77.7, target_temp_c: 15.5, ambient_temp_f: 77.7, ambient_temp_c: 15.5, humidity: 0)
        XCTAssertNotNil(zeroHumidityThermo)
        
        // 100% humidity
        let hunnitHumidityThermo = Thermostat.init(name: "foo_name", label: "foo_label", id: "foo_id_1", is_online: true, target_temp_f: 77.7, target_temp_c: 15.5, ambient_temp_f: 77.7, ambient_temp_c: 15.5, humidity: 100)
        XCTAssertNotNil(hunnitHumidityThermo)
        
    }
    func testThermoInitializeationFails()
    {
        //negative humidity
        let negativeHumidityThermo = Thermostat.init(name: "foo_name", label: "foo_label", id: "foo_id_1", is_online: true, target_temp_f: 77.7, target_temp_c: 15.5, ambient_temp_f: 77.7, ambient_temp_c: 15.5, humidity: -99)
        XCTAssertNil(negativeHumidityThermo)
        
        // no device id
        let noIDThermo = Thermostat.init(name: "foo_name", label: "foo_label", id: "", is_online: true, target_temp_f: 77.7, target_temp_c: 15.5, ambient_temp_f: 77.7, ambient_temp_c: 15.5, humidity: 55)
        XCTAssertNil(noIDThermo)
        
        // humidity percentage > 100
        let hunnittenHumidityThermo = Thermostat.init(name: "foo_name", label: "foo_label", id: "foo_id_1", is_online: true, target_temp_f: 77.7, target_temp_c: 15.5, ambient_temp_f: 77.7, ambient_temp_c: 15.5, humidity: 110)
        XCTAssertNil(hunnittenHumidityThermo)
    }
    
    
    
    
}
