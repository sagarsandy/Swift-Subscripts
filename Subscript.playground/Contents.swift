import UIKit


let myInfo : [String : Any] = ["Name" : "Sagar", "Age" : 27, "Height" : 5.67]

let name = myInfo["Name"]

// When we are working with dictionaries, fetching a value from dictionary will always gives you an optional value. Becuase the key you are looking for may or maynot exist in the dictionary.
// In the above code name is an optinal and type any


// Mostly subscripts are used in/for key-value pair based concepts

// As we discussed earlier fetching dictionary value always returns optional value, let' see how to over caome this.

struct StudentHeights {
    
    var heights : [String : Double] = [:]
    
    subscript(key : String) -> Double {
        
        if let value = heights[key] {
            return value
        } else {
            return 0
        }
    }
}


let allStudentsHeights = StudentHeights.init(heights: ["Sagar" : 5.9, "Sandy" : 6.0, "Buuny" : 6.2])
let sagarHeight = allStudentsHeights["Sagar"] // Will return 5.9, and this is not an optional value :D
let noHight = allStudentsHeights["NoOne"] // Will return 0, and this is not an optional value :D


// Another use case is, we can perform oprations on dictionar data
// Simple example
struct WeekDays {
    
    var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    
    subscript(index : Int) -> String {
        
        return days[index] + " Lazy Day"
    }
    
}

let workingDays = WeekDays()
workingDays[0]  //This will return Monday Lazy Day, so we can perform some oprations on key value pair based data




