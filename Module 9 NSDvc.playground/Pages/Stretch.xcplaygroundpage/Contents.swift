//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


 let workingDicitonary = ["name" : "Derek", "age": 28, "favMovie" : "Zoolander"]
 let brokenDictionary = ["name" : "Steve", "age": 12]


class Person {
    
    let nameKey = "name"
    let ageKey = "age"
    let favMovieKey = "favMovie"
    
    var name: String?
    var age: Int?
    var favMovie: String?
    
    
    
     init?(dictionary: [String:AnyObject]) {
     guard let name = dictionary[nameKey] as? String,
     let age = dictionary[ageKey] as? Int,
     let favMovie = dictionary[favMovieKey] as? String else {
     print ("Failed to Initilize")
     return nil
     }
      self.name = name
      self.age = age
      self.favMovie = favMovie
      }
  }

let personOne = Person(dictionary: workingDicitonary)
let personTwo = Person(dictionary: brokenDictionary)

//    let somePerson = Person(dictionary: workingDictionary)
//    let anotherPreson = Person(
//
//    var fullDescription: String{
//    return "\(name) \(age) \(favMovie)"
//    }
//    
//    var  dictionaryRepresentaion: [String: AnyObject] {
//        
//        let personDictionary: [String: AnyObject] = [nameKey: self.name, ageKey: self.age, favMovieKey: self.favMovie]
//        
//        return personDictionary
//    }
//    
//    init(name: String, age: Int, favMovie: String) {
//    self.name = name
//    self.age = age
//    self.favMovie = favMovie
//    }
//
//    init?(dictionary: [String: AnyObject]) {
//        guard let name = dictionary[nameKey] as? String
//        let age = dictionary[ageKey] as? Int
//        let favMovie = dictionary[favMovieKey] as? String else {
//            
//            // If it's not there
//            self.name = ""
//            self.age = 0
//            self.favMovie = ""
//        }
//        
//        // If it is there
//        
//        self.name = name
//        self.age = age
//        self.favMovie = favMovie
//}



