//
//  ViewController.swift
//  Lab10-NavigationController
//
//  Created by John Radvansky on 3/24/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstName: UITextField?
    @IBOutlet var middleName: UITextField?
    @IBOutlet var lastName: UITextField?
    @IBOutlet var addressLine1: UITextField?
    @IBOutlet var addressLine2: UITextField?
    @IBOutlet var city: UITextField?
    @IBOutlet var state: UITextField?
    @IBOutlet var zip: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let displayDataViewController = segue.destination as? DisplayDataViewController
        else {
            return
        }
        displayDataViewController.firstName = (firstName?.text)!
        displayDataViewController.middleName = (middleName?.text)!
        displayDataViewController.lastName = (lastName?.text)!
        displayDataViewController.addressLine1 = (addressLine1?.text)!
        displayDataViewController.addressLine2 = (addressLine2?.text)!
        displayDataViewController.city = (city?.text)!
        displayDataViewController.state = (state?.text)!
        displayDataViewController.zip = (zip?.text)!
    }
}

