//
//  main.swift
//  ComputerPurchase
//

import Foundation

// INPUT
// Global variable, tracks how many computers we are going to collect specs for
var countOfExpectedSpecsThatWillBeProvided = 0
while 1 == 1 {
    print("How many specs will be provided?")
    guard let givenInput = readLine() else {
        continue
    }
    guard let givenInteger = Int(givenInput) else  {
        continue
    }
    if givenInteger < 1 {
        continue
    }
    countOfExpectedSpecsThatWillBeProvided = givenInteger
    break
}

// Write a loop to actually determine how many computer specs the user will provide
// e.g.: write the rest of the INPUT section


// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Collect the list of computer specs here
var bestComputerSpec = 0
var bestComputerName = ""
for counter in 1...countOfExpectedSpecsThatWillBeProvided {
    
    // Ask user for the specs for a given computer
    print("Spec \(counter)?")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    // split the input into individual pieces
    let givenInputPieces = givenInput.split(separator: " ")
   // make sure the pieces are in right order
    let computerName = String(givenInputPieces[0])
    let computerRAM = Int(givenInputPieces[1])
    let computerCPU = Int(givenInputPieces[2])
    let computerDriveSpace = Int(givenInputPieces[3])
  // unwrap
   let specResult =  2 * computerRAM! + 3 * computerCPU! + computerDriveSpace!
   // find the maximum amount 
    if specResult > bestComputerSpec {
        bestComputerSpec = specResult
        bestComputerName = computerName
    }
    print("The best computer is \(bestComputerName)")
    
    // Implement the rest of your logic here...
    
}

