
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "toScene2":
            let inputValue = input.text
            let scene2Controller = segue.destination as! Scene2ViewController
            scene2Controller.inputValue = inputValue!
        default:
            preconditionFailure("Unexpected segue identifier")
        }
    }

}

