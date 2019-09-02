//  Created by B.T. Franklin on 5/27/18

import XCTest
@testable import Wordsmith

class CommonPersonNameTests: XCTestCase {
    
    func testInitializer() {
        for _ in 1...100 {
            let name = CommonPersonName(gender: .male)
            XCTAssertNotNil(name.description)
            print("Male: \(name)")
        }
        
        for _ in 1...100 {
            let name = CommonPersonName(gender: .female)
            XCTAssertNotNil(name.description)
            print("Female: \(name)")
        }
    }
    
    func testUniqueness() {
        var generatedValues = Set<CommonPersonName>()
        var consecutiveRetries = 0
        
        while consecutiveRetries < 1000 {
            let value = CommonPersonName(gender: .male)
            
            if generatedValues.contains(value) {
                consecutiveRetries += 1
            } else {
                generatedValues.insert(value)
                consecutiveRetries = 0
            }
        }
        
        print("Could no longer generate unique male names after \(consecutiveRetries) consecutive retries.")
        print("Final count of unique values: \(generatedValues.count)")
        
        generatedValues.removeAll()
        consecutiveRetries = 0
        
        while consecutiveRetries < 1000 {
            let value = CommonPersonName(gender: .female)
            
            if generatedValues.contains(value) {
                consecutiveRetries += 1
            } else {
                generatedValues.insert(value)
                consecutiveRetries = 0
            }
        }
        
        print("Could no longer generate unique female names after \(consecutiveRetries) consecutive retries.")
        print("Final count of unique values: \(generatedValues.count)")
    }
    
}