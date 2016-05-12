//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


import UIKit

class Car {
    
    private let makeKey = "make"
    private let modelKey = "model"
    private let yearKey = "year"
    private let colorKey = "color"
    private let numberOfDoorsKey = "numberOfDoors"
    
    let make: String
    let model: String
    var year: Int
    let color: String
    let numberOfDoors: Int
    
    var fullDescription: String{
        return "\(make) \(model) \(year) \(color) \(numberOfDoors)"
    }
    
    var dictionaryRepresentation: [String: AnyObject] {
        
        let carDictionary: [String: AnyObject] = [makeKey: self.make, modelKey: self.model, yearKey: self.year, colorKey: self.color, numberOfDoorsKey: self.numberOfDoors]
        
        return carDictionary
    }
    
    init(make: String, model: String, year: Int, color: String, numberOfDoors: Int) {
        
        self.make = make
        self.model = model
        self.year = year
        self.color = color
        self.numberOfDoors = numberOfDoors
    }
    
    init?(dictionary: [String: AnyObject]) {
        
        guard let make = dictionary[makeKey] as? String,
            let model = dictionary[modelKey] as? String,
            let year = dictionary[yearKey] as? Int,
            let color = dictionary[colorKey] as? String,
            let numberOfDoors = dictionary[numberOfDoorsKey]as? Int else {
            
            
                // if we are missing something
            
                self.make = ""
                self.model = ""
                self.year = 0
                self.color = ""
                self.numberOfDoors = 0
            
                return nil
        }
        
        // if everything is here
        
        self.make = make
        self.model = model
        self.year = year
        self.color = color
        self.numberOfDoors = numberOfDoors
    }
}

// Class to Dictionary

let myCar = Car(make: "Mini Cooper", model: "Clubman", year: 2012, color: "Black", numberOfDoors: 4)
print(myCar.dictionaryRepresentation)


// Dictionary to Class

// let dreamCarDictionary = ["makeKey": "Bentley", "makeKey": "Continential", "makeKey": 2020, "colorKey": "Black", "numberOfDoorsKey": 4]
// let dreamCar = Car(dictionary: dreamCarDictionary)

let stupidCarDictionary = Car(make: "Chevy", model: "Avalanche", year: 2003, color: "Red", numberOfDoors: 5)
print(stupidCarDictionary.dictionaryRepresentation)

