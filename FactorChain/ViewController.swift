//
//  ViewController.swift
//  FactorChain
//
//  Created by Daniel Washington Ignacio on 27/05/21.
//


/*
 A factor chain is an array where each previous element is a factor of the next consecutive element. The following is a factor chain:

 [3, 6, 12, 36]

 // 3 is a factor of 6
 // 6 is a factor of 12
 // 12 is a factor of 36
 Create a function that determines whether or not an array is a factor chain.

 Examples

 factorChain([1, 2, 4, 8, 16, 32]) ➞ true

 factorChain([1, 1, 1, 1, 1, 1]) ➞ true

 factorChain([2, 4, 6, 7, 12]) ➞ false

 factorChain([10, 1]) ➞ false
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(factorChain([1, 2, 4, 8, 16, 32]))
        print(factorChain([1, 1, 1, 1, 1, 1]))
        print(factorChain([2, 4, 6, 7, 12]))
        print(factorChain([10, 1]))
    
    }

    
    func factorChain(_ arr: [Int]) -> Bool {
        for n in 0...arr.count-2{
            if (arr[n+1] % arr[n]) != 0{
                return false
            }
        }
        return true
    }

}

