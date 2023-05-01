//
//  RomanNumerals.swift
//  RomanNumerals
//
//  Created by Marina Aguiar on 4/18/23.
//

class RomanNumerals {

    func getRomanNumeral(for number: Int) -> String {

        var romanNumeral = ""

        romanNumeral = getRomanNumeralUnits(for: number)

        if number >= 10, number < 100 {
            romanNumeral = getRomanNumeralTens(for: number)
        }

        if number >= 100, number < 1000  {
            romanNumeral = getRomanNumeralHundreds(for: number)
        }

        if number >= 1000 {
            romanNumeral = getRomanNumeralThousands(for: number)
        }

        if number > 10, number < 100 {
            let tens = number / 10
            let rest = number - (10 * tens)
            romanNumeral += getRomanNumeral(for: rest)
        }

        if number > 100, number < 1000 {
            let hundreds = number / 100
            let rest = number - (100 * hundreds)
            romanNumeral += getRomanNumeral(for: rest)
        }

        if number > 1000, number < 10000 {
            let thousands = number / 1000
            let rest = number - (1000 * thousands)
            romanNumeral += getRomanNumeral(for: rest)
        }

        return romanNumeral
    }

    func getRomanNumeralUnits(for number: Int) -> String {

        var romanNumeral = ""
        if number >= 1, number <= 3 {
            for _ in 1...number {
                romanNumeral += "I"
            }
            return romanNumeral
        }

        if number == 4 {
            romanNumeral = "IV"
            return romanNumeral
        }

        if number == 5 {
            romanNumeral += "V"
        }

        if number > 5, number < 9 {
            romanNumeral += "V"
            let subtraction = number - 5
            for _ in 1...subtraction {
                romanNumeral += "I"
            }
            return romanNumeral
        }

        if number == 9 {
            romanNumeral = "IX"
            return romanNumeral
        }
        return romanNumeral
    }


    func getRomanNumeralTens(for number: Int) -> String {
        var romanNumeral = ""
        let tens = number / 10
        if tens >= 1, tens <= 3 {
            for _ in 1...tens {
                romanNumeral += "X"
            }
        }

        if tens == 4 {
            romanNumeral += "XL"
        }

        if tens >= 5, tens <= 8 {
            romanNumeral += "L"
            if tens - 5 != 0 {
                for _ in 1...(tens - 5) {
                    romanNumeral += "X"
                }
            }
        }

        if tens == 9 {
            romanNumeral += "XC"
        }
        return romanNumeral
    }

    func getRomanNumeralHundreds(for number: Int) -> String {
        var romanNumeral = ""
        let hundreds = number / 100

        if hundreds >= 1, hundreds <= 3 {
            for _ in 1...hundreds {
                romanNumeral += "C"
            }
        }

        if hundreds == 4 {
            romanNumeral += "CD"
        }

        if hundreds >= 5, hundreds <= 8 {
            romanNumeral += "D"
            if hundreds - 5 != 0 {
                for _ in 1...(hundreds - 5) {
                    romanNumeral += "C"
                }
            }
        }
        if hundreds == 9 {
            romanNumeral += "CM"
        }

        return romanNumeral
    }

    func getRomanNumeralThousands(for number: Int) -> String {
        var romanNumeral = ""
        let thousands = number / 1000

        if thousands >= 1, thousands <= 3 {
            for _ in 1...thousands {
                romanNumeral += "M"
            }
        }

        if thousands == 4 {
            romanNumeral += "-IV"
        }

        if thousands >= 5, thousands <= 8 {
            romanNumeral += "-V"
            if thousands - 5 != 0 {
                for _ in 1...(thousands - 5) {
                    romanNumeral += "M"
                }
            }
        }
        return romanNumeral
    }
}
