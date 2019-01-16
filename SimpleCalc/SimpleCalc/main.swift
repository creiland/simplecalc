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
            let operation = args[args.count - 1]
            if operation == "count" {
                ret = args.count - 1
            } else if operation == "avg" {
                var sum = 0
                var x = 0
                while args[x] != "avg"{
                    sum = sum + Int(args[x])!
                    x = x + 1
                }
                
                if(args.count <= 1) {
                    ret = 0
                } else {
                    ret = sum / (args.count - 1)
                }
            } else if operation == "fact" {
                if(args.count == 1){
                    return 0
                }
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
