print("Welcome to the UW Calculator Playground")

func calculate(_ args: [String]) -> Int {
    if args.count == 1 {
        // One argument = just "avg", "fact", or "count", all of which evaulate to 0
        return 0
    } else if args.count == 2 {
        // Average, factorial, or count of 1 number
        switch args[1] {
        case "avg":
            // The average of 1 number is itself
            return Int(args[0])!
        case "fact":
            // Do factorial stuff
            var total = 1
            for num in 1...Int(args[0])! {
                total *= num
            }
            return total
        case "count":
            // With only 1 other argument, the count is always 1
            return 1
        default:
            return -1
        }
    } else if args.count == 3 {
        // "Normal" (ie: 2 + 2) type cases, average of 2 numbers, or count of 2 numbers
        switch args[2] {
        case "avg":
            return (Int(args[0])! + Int(args[1])!) / 2
        case "count":
            return 2
        default:
            switch args[1]{
            case "+":
                return Int(args[0])! + Int(args[2])!
            case "-":
                return Int(args[0])! - Int(args[2])!
            case "*":
                return Int(args[0])! * Int(args[2])!
            case "/":
                return Int(args[0])! / Int(args[2])!
            case "%":
                return Int(args[0])! % Int(args[2])!
            default:
                return -1
            }
        }
    } else {
        // Count and average cases
        switch args[args.count-1] {
        case "avg":
            // Average everything
            var sum = 0;
            for num in args {
                if num != "avg"{
                    sum += Int(num)!
                }
            }
            return sum / (args.count - 1)
        case "count":
            return args.count - 1
        default:
            return -1
        }
    }
}

func calculate(_ arg: String) -> Int {
    let args = arg.split(separator: " ")
    if args.count == 1 {
        // One argument = just "avg", "fact", or "count", all of which evaulate to 0
        return 0
    } else if args.count == 2 {
        // Average, factorial, or count of 1 number
        switch args[1] {
        case "avg":
            // The average of 1 number is itself
            return Int(args[0])!
        case "fact":
            // Do factorial stuff
            var total = 1
            for num in 1...Int(args[0])! {
                total *= num
            }
            return total
        case "count":
            // With only 1 other argument, the count is always 1
            return 1
        default:
            return -1
        }
    } else if args.count == 3 {
        // "Normal" (ie: 2 + 2) type cases, average of 2 numbers, or count of 2 numbers
        switch args[2] {
        case "avg":
            return (Int(args[0])! + Int(args[1])!) / 2
        case "count":
            return 2
        default:
            switch args[1]{
            case "+":
                return Int(args[0])! + Int(args[2])!
            case "-":
                return Int(args[0])! - Int(args[2])!
            case "*":
                return Int(args[0])! * Int(args[2])!
            case "/":
                return Int(args[0])! / Int(args[2])!
            case "%":
                return Int(args[0])! % Int(args[2])!
            default:
                return -1
            }
        }
    } else {
        // Count and average cases
        switch args[args.count-1] {
        case "avg":
            // Average everything
            var sum = 0;
            for num in args {
                if num != "avg"{
                    sum += Int(num)!
                }
            }
            return sum / (args.count - 1)
        case "count":
            return args.count - 1
        default:
            return -1
        }
    }
}

// -------------------------------------------
// All of these expressions should return true
// if you have implemented calculate() correctly
//
calculate(["2", "+", "2"]) == 4
calculate(["4", "+", "4"]) == 8
calculate(["2", "-", "2"]) == 0
calculate(["2", "*", "2"]) == 4
calculate(["2", "/", "2"]) == 1
calculate(["2", "%", "2"]) == 0

calculate(["1", "2", "3", "count"]) == 3
calculate(["1", "2", "3", "4", "5", "count"]) == 5
calculate(["count"]) == 0

calculate(["1", "2", "3", "4", "5", "avg"]) == 3
    // 15 / 5 = 3
calculate(["2", "2", "4", "4", "avg"]) == 3
    // 12 / 4 = 3
calculate(["2", "avg"]) == 2
    // 2 / 1 = 2
calculate(["avg"]) == 0
    // 0 / 0 = 0 (not really, but it's an edge case

//calculate(["0", "fact"]) == 1
calculate(["1", "fact"]) == 1
calculate(["2", "fact"]) == 2 // 2*1
calculate(["5", "fact"]) == 120 // 5*4*3*2*1
calculate(["fact"]) == 0

calculate("2 + 2") == 4
calculate("2 * 2") == 4
calculate("2 - 2") == 0
calculate("2 / 2") == 1

calculate("1 2 3 4 5 count") == 5
calculate("1 2 3 4 5 avg") == 3
calculate("5 fact") == 120

// -------------------------------------------
// These are extra credit tests; commented out
// uncomment them to turn them on for evaluation

// Implement calculate([String]) and calculate(String)
// to handle negative numbers
/*
calculate(["2", "+", "-2"]) == 0
calculate(["2", "-", "-2"]) == 4
calculate(["2", "*", "-2"]) == -4
calculate(["2", "/", "-2"]) == -1
calculate(["-5", "%", "2"]) == -1

calculate(["1", "-2", "3", "-2", "5", "avg"]) == 1

calculate("2 + -2") == 0
calculate("2 * -2") == -4
calculate("2 - -2") == 4
calculate("-2 / 2") == -1

calculate("1 -2 3 -4 5 count") == 5
*/
 
// Implement calculate([String]) and calculate(String)
// to use floating-point values
/*
func calculate(_ args: [String]) -> Double {
    return -1.0
}
func calculate(_ arg: String) -> Double {
    return -1.0
}

calculate(["2.0", "+", "2.0"]) == 4.0
calculate([".5", "+", "1.5"]) == 2.0
calculate(["12.0", "-", "12.0"]) == 0.0
calculate(["2.5", "*", "2.5"]) == 6.25
calculate(["2.0", "/", "2.0"]) == 1.0
calculate(["2.0", "%", "2.0"]) == 0.0
calculate("1.0 2.0 3.0 4.0 5.0 count") == 5
*/
