//
//  CardCell.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 8/4/21.
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(title: String?) {
        titleLabel?.text = title
    }
    
}
