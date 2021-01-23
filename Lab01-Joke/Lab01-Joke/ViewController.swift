import UIKit

class ViewController: UIViewController {

    @IBOutlet var jokeLabel: UILabel!
    @IBOutlet var punchLineLabel: UILabel!
    @IBOutlet var nextJokeButton: UIButton!
    
    let jokes:[String] = [
        "Why did the cookie go to the hospital?",
        "What has ears, but can't hear?",
        "What did one plate say to the other plate?"
    ];
    
    let punchLines:[String] = [
        "Because he felt crummy.",
        "A cornfield.",
        "Dinner is on me!"
    ];
    
    let initialJokeLabel:String = "Show Joke";
    let initialPunchLineLabel:String = "Show Punch Line";
    
    var currentJokeIndex = 0;

    @IBAction func showJoke(_ sender: UIButton) {
        jokeLabel.text = jokes[currentJokeIndex];
    }
    
    @IBAction func showPunchLine(_ sender: UIButton) {
        punchLineLabel.text = punchLines[currentJokeIndex];
        nextJokeButton.isHidden = false;
    }
    
    @IBAction func showNextJoke(_ sender: UIButton) {
        if (currentJokeIndex == jokes.count-1) {
            currentJokeIndex = 0;
        }
        else {
            currentJokeIndex+=1;
        }
        jokeLabel.text = initialJokeLabel;
        punchLineLabel.text = initialPunchLineLabel;
        nextJokeButton.isHidden = true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        nextJokeButton.isHidden = true;
    }

}

