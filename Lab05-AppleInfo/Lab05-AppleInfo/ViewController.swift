import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet var appleLink: UISegmentedControl!
    @IBOutlet var webApple: WKWebView!
    @IBOutlet var segmentTitle: UILabel!
    let initUrl = "https://en.wikipedia.org/wiki/Apple_Inc"
    
    @IBAction func changeAppleLink(_sender:Any) {
        var url = ""
        switch appleLink.selectedSegmentIndex {
            case 0:
                url = initUrl
            case 1:
                url = "https://en.wikipedia.org/wiki/IOS"
            case 2:
                url = "https://en.wikipedia.org/wiki/Xcode"
            case 3:
                url = "https://en.wikipedia.org/wiki/Swift_(programming_language)"
            default:
                url = "https://www.google.com"
        }
        setWebView(url: url)
    }
    
    func setWebView(url: String) {
        let url = URL(string: url)
        let request = URLRequest(url: url!)
        webApple.load(request)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setWebView(url: initUrl)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

