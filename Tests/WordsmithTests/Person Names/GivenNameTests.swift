//  Created by B.T. Franklin on 5/27/18

import XCTest
@testable import Wordsmith

class GivenNameTests: XCTestCase {
    
    func testUniqueness() {
        var generatedValues = Set<GivenName>()
        var consecutiveRetries = 0
        
        while consecutiveRetries < 1000 {
            let value = GivenName(gender: .male)
            
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
            let value = GivenName(gender: .female)
            
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
