//
//  Model.swift
//  Clean ARC
//
//  Created by Shahzaib Mumtaz on 18/01/2022.
//

import Foundation
import UIKit

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

class Person
{
    let name:String?
    weak var job:Job?
    
    init(_name:String)
    {
        debugPrint("Init method of person called")
        name = _name
    }
    
    deinit
    {
        debugPrint("Deinit method called for person")
    }
}

class Job
{
    let jobDescription:String?
    var person:Person?
    
    init(_jobDescription:String)
    {
        debugPrint("Init method of job called")
        jobDescription = _jobDescription
    }
    
    deinit
    {
        debugPrint("Deinit method called for job")
    }
}
