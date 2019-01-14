//
//  main.swift
//  SimpleCalc
//
//  Created by Ted Neward on 10/3/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

public class Calculator {
    public func calculate(_ args: [String]) -> Int {
        var ret : Int = 0
        if args.count == 3 {
            let first = Int(args[0])
            let operation = args[1]
            let second = Int(args[2])
            if operation == "+" {
                ret = first! + second!
            } else if operation == "-" {
                ret = first! - second!
            } else if operation == "/" {
                ret = first! / second!
            } else if operation == "*" {
                ret = first! * second!
            } else if operation == "%" {
                ret = first! % second!
            }
        } else {
            let operation = args[args.count]
            if operation == "count" {
                ret = args.count - 1
            } else if operation == "avg" {
                ret = 0
                for _ in 0...(args.count - 1){
                    ret += 1
                }
            } else if operation == "fact" {
                let num = Int(args[0])
                if num! > 0 {
                    ret = 1
                    for i in 1...num! {
                        ret = ret * i
                    }
                } else {
                    ret = 1
                }
            }
        }
        return ret
    }
    
    public func calculate(_ arg: String) -> Int {
        return calculate( arg.split(separator: " ").map({ substr in String(substr) }) )
    }
}

print("UW Calculator v1")
print("Enter an expression separated by returns:")
let first = readLine()!
let operation = readLine()!
let second = readLine()!
print(Calculator().calculate([first, operation, second]))
