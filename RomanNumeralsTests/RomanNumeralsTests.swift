//
//  RomanNumeralsTests.swift
//  RomanNumeralsTests
//
//  Created by Marina Aguiar on 4/18/23.
//
@testable import RomanNumerals
import XCTest

final class RomanNumeralsTests: XCTestCase {

    var romanNumerals: RomanNumerals!

    override func setUp() {
        super.setUp()
        romanNumerals = RomanNumerals()
    }

    override func tearDown() {
        romanNumerals = nil
        super.tearDown()
    }

    func test_romanNumerals_shouldReturnTheCorrelatedNumberInDict() {
        let romanDict = [
            "I": 1,
            "IV": 4,
            "V": 5,
            "IX": 9,
            "X": 10,
            "XL": 40,
            "L": 50,
            "XC": 90,
            "C": 100,
            "CD": 400,
            "D": 500,
            "CM": 900,
            "M": 1000
        ]

        for (key, value) in romanDict {
            let result = romanNumerals.getRomanNumeral(for: value)
            XCTAssertEqual(result, key)
        }
    }

    func test_romanNumerals_shouldReturnNumber1() {
        let result = romanNumerals.getRomanNumeral(for: 1)
        XCTAssertEqual(result, "I")
    }

    func test_romanNumerals_shouldReturnNumber2() {
        let result = romanNumerals.getRomanNumeral(for: 2)
        XCTAssertEqual(result, "II")
    }

    func test_romanNumerals_shouldReturnNumber3() {
        let result = romanNumerals.getRomanNumeral(for: 3)
        XCTAssertEqual(result, "III")
    }

    func test_romanNumerals_shouldReturnNumber4() {
        let result = romanNumerals.getRomanNumeral(for: 4)
        XCTAssertEqual(result, "IV")
    }

    func test_romanNumerals_shouldReturnNumber5() {
        let result = romanNumerals.getRomanNumeral(for: 5)
        XCTAssertEqual(result, "V")
    }

    func test_romanNumerals_shouldReturnNumber10() {
        let result = romanNumerals.getRomanNumeral(for: 10)
        XCTAssertEqual(result, "X")
    }

    func test_romanNumerals_shouldReturnNumber11() {
        let result = romanNumerals.getRomanNumeral(for: 11)
        XCTAssertEqual(result, "XI")
    }

    func test_romanNumerals_shouldReturnNumber14() {
        let result = romanNumerals.getRomanNumeral(for: 14)
        XCTAssertEqual(result, "XIV")
    }


    func test_romanNumerals_shouldReturnNumber15() {
        let result = romanNumerals.getRomanNumeral(for: 15)
        XCTAssertEqual(result, "XV")
    }

    func test_romanNumerals_shouldReturnNumber17() {
        let result = romanNumerals.getRomanNumeral(for: 17)
        XCTAssertEqual(result, "XVII")
    }

    func test_romanNumerals_shouldReturnNumber19() {
        let result = romanNumerals.getRomanNumeral(for: 19)
        XCTAssertEqual(result, "XIX")
    }

    func test_romanNumerals_shouldReturnNumber20() {
        let result = romanNumerals.getRomanNumeral(for: 20)
        XCTAssertEqual(result, "XX")
    }

    func test_romanNumerals_shouldReturnNumber21() {
        let result = romanNumerals.getRomanNumeral(for: 21)
        XCTAssertEqual(result, "XXI")
    }

    func test_romanNumerals_shouldReturnNumber45() {
        let result = romanNumerals.getRomanNumeral(for: 45)
        XCTAssertEqual(result, "XLV")
    }

    func test_romanNumerals_shouldReturnNumber50() {
        let result = romanNumerals.getRomanNumeral(for: 50)
        XCTAssertEqual(result, "L")
    }

    func test_romanNumerals_shouldReturnNumber51() {
        let result = romanNumerals.getRomanNumeral(for: 51)
        XCTAssertEqual(result, "LI")
    }

    func test_romanNumerals_shouldReturnNumber100() {
        let result = romanNumerals.getRomanNumeral(for: 100)
        XCTAssertEqual(result, "C")
    }

    func test_romanNumerals_shouldReturnNumber90() {
        let result = romanNumerals.getRomanNumeral(for: 90)
        XCTAssertEqual(result, "XC")
    }

    func test_romanNumerals_shouldReturnNumber160() {
        let result = romanNumerals.getRomanNumeral(for: 160)
        XCTAssertEqual(result, "CLX")
    }

    func test_romanNumerals_shouldReturnNumber450() {
        let result = romanNumerals.getRomanNumeral(for: 450)
        XCTAssertEqual(result, "CDL")
    }

    func test_romanNumerals_shouldReturnNumber500() {
        let result = romanNumerals.getRomanNumeral(for: 500)
        XCTAssertEqual(result, "D")
    }

    func test_romanNumerals_shouldReturnNumber849() {
        let result = romanNumerals.getRomanNumeral(for: 849)
        XCTAssertEqual(result, "DCCCXLIX")
    }

    func test_romanNumerals_shouldReturnNumber9000() {
        let result = romanNumerals.getRomanNumeral(for: 900)
        XCTAssertEqual(result, "CM")
    }

    func test_romanNumerals_shouldReturnNumber1000() {
        let result = romanNumerals.getRomanNumeral(for: 1000)
        XCTAssertEqual(result, "M")
    }

}
