
import UIKit

class DisplayDataViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel?
    @IBOutlet var addressLine1Label: UILabel?
    @IBOutlet var addressLine2Label: UILabel?
    @IBOutlet var cityStateZipLabel: UILabel?
    
    var firstName = ""
    var middleName = ""
    var lastName = ""
    var addressLine1 = ""
    var addressLine2 = ""
    var city = ""
    var state = ""
    var zip = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if (firstName == "" || lastName == "") {
            fullNameLabel?.text = "Please enter your first and last name."
        }
        else {
            fullNameLabel?.text = "\(firstName)\(middleName == "" ? "" : " \(middleName)") \(lastName)"
        }
        if (addressLine1 == "") {
            addressLine1Label?.text = "Please enter your address."
        }
        else {
            addressLine1Label?.text = addressLine1
        }
        if (addressLine2 == "") {
            addressLine2Label?.isHidden = true
        }
        else {
            addressLine2Label?.text = addressLine2
        }
        if (city == "" || state == "" || zip == "") {
            cityStateZipLabel?.text = "Please enter city, state, and zip."
        }
        else {
            cityStateZipLabel?.text = "\(city), \(state) \(zip)"
        }
    }

}
