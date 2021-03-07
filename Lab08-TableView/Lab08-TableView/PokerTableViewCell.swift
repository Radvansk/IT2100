//
//  PokerTableViewCell.swift
//  Lab08-TableView
//
//  Created by John Radvansky on 3/7/21.
//

import UIKit

class PokerTableViewCell: UITableViewCell {

    @IBOutlet weak var rank: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var handDescription: UILabel!
    @IBOutlet weak var probability: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
