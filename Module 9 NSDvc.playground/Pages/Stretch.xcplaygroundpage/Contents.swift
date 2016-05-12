//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)



class Person {
    
    private let nameKey = "name"
    private let ageKey = "age"
    private let favMovieKey = "favMovie"
    
    let name: String
    let age: Int
    let favMovie: String
    
    var fullDescription: String{
    return "\(name) \(age) \(favMovie)"
    }
    
    var  dictionaryRepresentaion: [String: AnyObject] {
        
        let personDictionary: [String: AnyObject] = [nameKey: self.name, ageKey: self.age, favMovieKey: self.favMovie]
        
        return personDictionary
    }
    
    init(name: String, age: Int, favMovie: String) {
    self.name = name
    self.age = age
    self.favMovie = favMovie
    }

    init?(dictionary: [String: AnyObject]) {
        guard let name = dictionary[nameKey] as? String
        let age = dictionary[ageKey] as? Int
        let favMovie = dictionary[favMovieKey] as? String else {
            
            self.name = ""
            self.age = ""
            self.favMovie = ""
        }
    
    

}

let thisPerson = Person(name: "Fred", age: 34, favMovie: "Talledaga Nights")
print(thisPerson.dictionaryRepresentaion)


