//
//  ArrayOfAnimals.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Mr Wonderful on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

struct ArrayOfAnimals{
    
    var mammal = [ZooAnimal]()
    var insect = [ZooAnimal]()
    var birds = [ZooAnimal]()
    var reptile = [ZooAnimal]()
    var amphibian = [ZooAnimal]()
    
   mutating func SortingClassification() ->[[ZooAnimal]] {
        
        
        for animals in ZooAnimal.zooAnimals{
            switch animals.classification{
            case "Mammal":
                mammal.append(animals)
            case "Insect":
                insect.append(animals)
            case "Bird":
                birds.append(animals)
            case "Reptile":
                reptile.append(animals)
            case "Amphibian":
                amphibian.append(animals)
            default:
                break
            }
        }
    let allAnimalArray = [mammal, insect, birds, reptile, amphibian]
    return allAnimalArray
}
}
