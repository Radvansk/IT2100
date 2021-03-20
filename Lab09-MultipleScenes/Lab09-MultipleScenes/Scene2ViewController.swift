import UIKit

class Scene2ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var inputValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if (inputValue.trimmingCharacters(in: .whitespaces) == "") {
            label.text = "Please enter your name on the previous page"
        }
        else {
            label.text = "hello, \(inputValue)"
        }
    }

}
