//
//  TowersOfHanoi.swift
//
//  Created by Ryan Chung
//  Created on 2021-12-03
//  Version 1.0
//  Copyright (c) 2021 Ryan Chung. All rights reserved.
//
//  This program solves the Towers of Hanoi problem.
//

import Foundation

// Solves the Towers of Hanoi through recursion
func hanoi(
    ring: Int, fromRod: Character, toRod: Character, midRod: Character) {

    if ring > 1 {
        hanoi(ring: ring - 1, fromRod: fromRod, toRod: midRod, midRod: toRod)
        print("Move disk \(ring) from rod \(fromRod) to rod \(toRod)")
        hanoi(ring: ring - 1, fromRod: midRod, toRod: toRod, midRod: fromRod)
    } else if ring == 1 {
        print("Move disk 1 from rod \(fromRod) to rod \(toRod)")
    } else {
        print("Please enter a number higher than 0.")
    }
}

// Reusable error message
func errorMessage() {
    print("Please enter a number higher than 0.")
    print("\nDone.")
}

// Takes user input for the amount of rings inside the problem and starts the
// algorithm
let fromRod: Character = "A"
let toRod: Character = "C"
let midRod: Character = "B"

// User prompt
print("Choose the amount of rings: ", terminator: "")

// Reads the user input and makes sure it isn't empty
guard let numRingsString = readLine(), !numRingsString.isEmpty else {
    errorMessage()
    exit(001)
}

// Tries to convert it to an int
if let rings = Int(numRingsString) {
    print("")

    // Calls the hanoi algorithm
    hanoi(ring: rings, fromRod: fromRod, toRod: toRod, midRod: midRod)
} else {
    print("Please enter a number higher than 0.")
}

print("\nDone.")
