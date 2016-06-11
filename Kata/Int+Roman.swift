//
//  Int+Roman.swift
//  KataRomanNumerals
//
//  Created by José Servet Font on 8/6/16.
//  Copyright © 2016 ByBDesigns. All rights reserved.
//

import Foundation

func getIndex(value: Int) -> Int? {
	let specialValues = [1000, 500, 400, 100, 90, 50, 40, 10, 5]
	
	for valor in specialValues {
		if value > valor {
			return valor
		}
	}
	
	return nil
}

func fromDictionary(value: Int) -> String {
	var total: String = ""
	
	let dictionary: [Int: String] = [	1: "I", 4: "IV", 5: "V", 9: "IX",
										10: "X", 40: "XL", 50: "L", 90: "XC",
										100: "C", 400: "CD", 500: "D",
										1000: "M"]
	
	if let romanValue = dictionary[value] {
		return romanValue
	} else {
		if let index = getIndex(value) {
			total.appendContentsOf(dictionary[index]!)
			total.appendContentsOf(fromDictionary(value-index))
		} else {
			for _ in 1...value {
				total.appendContentsOf(dictionary[1]!)
			}
		}
	}
	
	return total
}

extension Int {
	var roman: String {
		return fromDictionary(self)
	}
}