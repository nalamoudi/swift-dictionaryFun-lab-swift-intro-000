//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream: [String:String] = ["Joe": "Peanut Butter and Chocolate",
    "Tim": "Natural Vanilla",
    "Sophie": "Mexican Chocolate",
    "Deniz": "Natural Vanilla",
    "Tom": "Mexican Chocolate",
    "Jim": "Natural Vanilla",
    "Susan": "Cookies 'N' Cream"]
    
    
    
    // 2.
    
    
    func names(forFlavor flavor:String) -> [String] {
    
        var arrayNames: [String] = []
        for (key,value) in favoriteFlavorsOfIceCream {
            if value == flavor{
                arrayNames.append(key)
            }
            
        }
        
        return arrayNames
    }
    
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var counter = 0
        for (key,value) in favoriteFlavorsOfIceCream {
            if value == flavor{
            counter += 1
            }
            
        }
        
        return counter
    }
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        
        var icecreamFlavor = favoriteFlavorsOfIceCream[person]
        
        return icecreamFlavor
    }
    
    
    
    
    
    // 5.
   
    func replace(flavor:String,forPerson:String) -> Bool{
        
        for (key,value) in favoriteFlavorsOfIceCream {
            if key == forPerson{
                favoriteFlavorsOfIceCream[forPerson] = flavor
                return true
            }
            
            
        }
        return false
    }
    
    
    
    
    
    // 6.
    
    
    func remove(person: String) -> Bool{
        
        for (key, value) in favoriteFlavorsOfIceCream {
            if key == person{
            favoriteFlavorsOfIceCream[person] = nil
            return true
        }
        }
        return false
    }
    
    
    
    
    
    // 7.
    
    
    
    func numberOfAttendees() -> Int {
        var counter = 0
        for (key,value) in favoriteFlavorsOfIceCream {
                counter += 1
            }
        
        return counter
    }
    
    
    
    
    // 8.
    
    
    func add(person:String ,withFlavor flavor: String) -> Bool {
        for (key, value) in favoriteFlavorsOfIceCream {
            if key == person{
                return false
            }
        }
        
        favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
        return true
        
    }
    
    
    
    
    
    
    // 9.
    
    
    func attendeeList() -> String{
        
        var str = ""
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        
        
        for (index,value) in allNames.enumerated() {
            var flavor = favoriteFlavorsOfIceCream[value]
            if let flavor = flavor{
                if allNames.count == (index + 1){
            str = str + "\(value) likes \(flavor)"
                } else {
                    str = str + "\(value) likes \(flavor)\n"
                }
            }
        }
        
        return str
        
    }
    
    
    
    
    

}
