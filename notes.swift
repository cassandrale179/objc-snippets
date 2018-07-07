// Resources: 
// https://www.bobthedeveloper.io/blog/introduction-to-protocol-oriented-programming-in-swift  
// https://blog.bobthedeveloper.io/the-complete-understanding-of-swift-delegate-and-data-source-9c91ecd7f1 


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
 
 
 // 2A. Create a Korean struct that adopt the protocol. A struct that adopt a protocol must implement all of the properties and methods belong to it 
 struct Korean: Human {
 var name: String = "Bob Lee"
 var race: String = "Asian"
 func sayHi() { print("Hi, I'm \(name)") }
}

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

// 3. Delegates and Data Source

// 3A. Create a delegate that has a method with a string as a parameter 
protocol FirstVCDelegate {
 func passData(data: String)
}


// 3B. Create a FirstVC class with an optional property delegate whose type is FirstVCDelegate 
class FirstVC {
 var delegate: FirstVCDelegate?
}


// 3C. Create a class SecondVC that conforms to FirstVCDelegate 
class SecondVC: FirstVCDelegate {
 func passData(data: String) {
  print("Something happened")
 }
} 

let firstVC = FirstVC() 
let secondVC = SecondVC()  
firstVC.delegate = secondVC  // secondVC = delegate  
firstVC.delegate?.passData(data: "a bunch of contracts”)
// "Something happened"  
// Conclusion: You are able to execute the passData method from FirstVC even though the passData method resides in SecondVC.
                           
                        
 
