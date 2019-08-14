//
//  ArrayOfAnimals.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Mr Wonderful on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

struct ArrayOfAnimals{
    
    
    
    var mammal = ZooAnimal.zooAnimals.filter({$0.classification == "Mammal"})
    var insect = ZooAnimal.zooAnimals.filter({$0.classification == "Insect"})
    var birds = ZooAnimal.zooAnimals.filter({$0.classification == "Bird"})
    var reptile = ZooAnimal.zooAnimals.filter({$0.classification == "Reptile"})
    var amphibian = ZooAnimal.zooAnimals.filter({$0.classification == "Amphibian"})
    
   mutating func SortingClassification() ->[[ZooAnimal]] {
        
    let allAnimalArray = [mammal, insect, birds, reptile, amphibian]
    return allAnimalArray
}
}
