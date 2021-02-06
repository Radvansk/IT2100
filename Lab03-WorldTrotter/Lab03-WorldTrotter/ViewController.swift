import UIKit

class ViewController: UIViewController {
    
   // var spacer1 view: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        createGradientLayer(view: self.view)
    }
    
    func createGradientLayer(view: UIView) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.yellow.cgColor, UIColor.systemIndigo.cgColor, UIColor.yellow.cgColor, UIColor.white.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}

