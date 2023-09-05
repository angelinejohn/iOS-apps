import UIKit

/*
 Problem Statement: write a function that iterates through numbers 1 to 100
 * For numbers divisible by 3, print "FIZZ"
 * For numbers divisible by 5, print "BUZZ"
 * For numbers divisible by 3 & 5 (such as number 15), print "FIZZBUZZ!"
 * For number that don't meet any of these qualifications, print the number
 */

func printFizzBuzz() {
    for i in 1...100 {
        switch i {
        case i where i % 3 == 0 && i % 5 == 0:
            print("FIZZBUZZ!")
        case i  where i % 3 == 0:
            print("FIZZ")
        case i where i % 5 == 0:
            print("BUZZ")
        default:
            print(i)
        }
    }
}

printFizzBuzz()
