
// 1. Differences betwen Class and Struct 

// 1A. Class Object 
class HumanClass {
 var name: String
 init(name: String) {
 self.name = name } 
}

var classyHuman = HumanClass(name: "Bob")
classyHuman.name // "Bob"
var newClassyHuman = classyHuman // Created a "copied" object
newClassyHuman.name = "Bobby"
classyHuman.name // "Bobby" 

// 1B. Struct Object 
struct HumanStruct {
 var name: String 
}
var humanStruct = HumanStruct(name: "Bob" )
var newHumanStruct = humanStruct // Copy and paste
newHumanStruct.name = "Bobby"
humanStruct.name // "Bob" 



// 2. Protocols 
protocol Human {
 var name: String { get set }
 var race: String { get set }
 func sayHi() } 
 
 
 // 2A. Create a Korean struct that adopt the protocol 
 struct Korean: Human {
 var name: String = "Bob Lee"
 var race: String = "Asian"
 func sayHi() { print("Hi, I'm \(name)") }
}

// 2B. A struct that adopt a protocol must implement all of the properties and methods belong to it


// 2C. Create a protocol that inherits from another protocol 
protocol SuperHuman: Human {
 var canFly: Bool { get set }
 func punch()
} 

// 2C Notes: A struct that inherits from SuperHuman protocol must also implement and method from the Human protocol 
// 💪 Over 9000
struct SuperSaiyan: SuperHuman {
 var name: String = "Goku"
 var race: String = "Asian"
 var canFly: Bool = true
 func sayHi() { print("Hi, I'm \(name)") }
 func punch() { print("Puuooookkk") }
}


// Resources: https://www.bobthedeveloper.io/blog/introduction-to-protocol-oriented-programming-in-swift 
