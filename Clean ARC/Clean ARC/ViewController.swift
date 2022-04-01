//
//  ViewController.swift
//  Clean ARC
//
//  Created by Shahzaib Mumtaz on 18/01/2022.
//

import UIKit

class ViewController: UIViewController {

    var john: Customer?
    
    var objPerson1: Person?
    var objPerson2: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        print("///////////////////// First Example /////////////////////////")
        
        john = Customer(name: "John Appleseed")
        john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)

        john = nil

        print("///////////////////// Second Example /////////////////////////")

        let objPersn = Person(_name: "Shahzaib")
        objPerson1 = objPersn
        objPerson2 = objPersn
        print(objPersn.name!)

        
        print("//////////////////////////////////////////////////////////////")
        
        let objPerson = Person(_name: "Shahzaib")
        let objJob = Job(_jobDescription: "IOS Developer")
        
        objPerson.job = objJob
        objJob.person = objPerson
    }


}

