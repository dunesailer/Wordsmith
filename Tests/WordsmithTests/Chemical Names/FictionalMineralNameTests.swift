//  Created by B.T. Franklin on 1/24/21.

import XCTest
@testable import Wordsmith

class FictionalMineralNameTests: XCTestCase {

    func testUniqueness() {
        var generatedValues = Set<FictionalMineralName>()
        var consecutiveRetries = 0

        while consecutiveRetries < 25 {
            let value = FictionalMineralName()

            if generatedValues.contains(value) {
                consecutiveRetries += 1
            } else {
                generatedValues.insert(value)
                consecutiveRetries = 0
            }
        }

        print("Could no longer generate unique values after \(consecutiveRetries) consecutive retries.")
        print("Final count of unique values: \(generatedValues.count)")
    }

}
