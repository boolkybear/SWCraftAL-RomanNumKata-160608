//
//  Int+Roman.swift
//  KataRomanNumerals
//
//  Created by José Servet Font on 8/6/16.
//  Copyright © 2016 ByBDesigns. All rights reserved.
//

import Foundation

func getIndex(value: Int) -> Int? {
	let specialValues = [100, 50, 10, 5]
	
	for valor in specialValues {
		if value > valor {
			return valor
		}
	}
	
	return nil
}

func fromDictionary(value: Int) -> String {
	var total: String = ""
	
	
	
	let dictionary: [Int: String] = [1: "I", 4: "IV", 5: "V", 9: "IX", 10: "X", 50: "L", 99: "XCIX", 100: "C"]
	
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