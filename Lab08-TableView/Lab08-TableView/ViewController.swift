import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var pokerRows: [PokerData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPokerRowData()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.estimatedRowHeight = 100
    }
    
    func setPokerRowData() {
        pokerRows.append(PokerData(rank: 1, name: "Royal Flush", description: "10, Jack, Queen, King, Ace all in same suit.", probability: 649737))
        
        pokerRows.append(PokerData(rank: 2, name: "Straight Flush", description: "Five cards in a row, all in same suit.", probability: 72193))
        
        pokerRows.append(PokerData(rank: 3, name: "Four of a Kind", description: "The same care in each of the four suits.", probability: 4164))
        
        pokerRows.append(PokerData(rank: 4, name: "Full House", description: "A pair plus three of a kind in the same hand.", probability: 693))
        
        pokerRows.append(PokerData(rank: 5, name: "Flush", description: "Five cards, all in one suit, but not in numerical order.", probability: 508))
        
        pokerRows.append(PokerData(rank: 6, name: "Straight", description: "5 cards in numerical order, but not of the same suit.", probability: 253))
        
        pokerRows.append(PokerData(rank: 7, name: "Three of a Kind", description: "Three of one card and two non-paired cards.", probability: 46))
        
        pokerRows.append(PokerData(rank: 8, name: "Two Pair", description: "Two different pairings or sets of the same card in one hand.", probability: 20))
        
        pokerRows.append(PokerData(rank: 9, name: "One Pair", description: "One pairing of the same card.", probability: 1.36))
        
        pokerRows.append(PokerData(rank: 10, name: "High Card", description: "No matching cards.", probability: 0.99))
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Poker Hands Chart"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pokerRows.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokerCell") as! PokerTableViewCell
        let data = pokerRows[indexPath.item]
        cell.rank.text = "#\(data.rank)"
        cell.name.text = data.name
        cell.handDescription.text = data.description
        let probability = data.probability
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.numberStyle = .decimal
        let probabilityFormat = formatter.string(from: probability as NSNumber)!
        cell.probability.text = String("Probability: 1 in \(probabilityFormat)")
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}

struct PokerData {
    var rank: Int
    var name: String
    var description: String
    var probability: Double
}
