//
//  ViewController.swift
//  ButtonOnView
//
//  Created by mac on 2/25/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.layer.borderWidth = 1
        myView.layer.borderColor = UIColor.black.cgColor
        // Do any additional setup after loading the view.
    }


}


class ParentClass {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class ChildClass {
    var parent: ParentClass  // Reference to the parent class
    var additionalProperty: String

    init(parent: ParentClass, additionalProperty: String) {
        self.parent = parent
        self.additionalProperty = additionalProperty
    }
}

let parent = ParentClass(name: "John")
let child = ChildClass(parent: parent, additionalProperty: "Additional Property")

let child2 = ParentClass(name: "John")
