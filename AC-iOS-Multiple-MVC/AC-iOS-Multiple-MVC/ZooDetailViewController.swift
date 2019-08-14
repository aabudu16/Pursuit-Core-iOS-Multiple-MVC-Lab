//
//  ZooDetailViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Mr Wonderful on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class ZooDetailViewController: UIViewController {
    
    var animals: ZooAnimal!
    @IBOutlet var zooDiscription: UITextView!
    @IBOutlet var zooAnimalName: UILabel!
    @IBOutlet var zooImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    zooImage.image = UIImage(named: String(animals.imageNumber))
        zooAnimalName.text = animals.name
        zooDiscription.text = animals.info
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
