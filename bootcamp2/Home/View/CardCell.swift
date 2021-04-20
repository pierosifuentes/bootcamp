//
//  CardCell.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 8/4/21.
//

import UIKit
import SDWebImage

final class CardCell: UITableViewCell {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var userImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(title: String?, imagePath: String?) {
        titleLabel?.text = title
        setupImage(title: title, imagePath: imagePath)
    }
    
    func setupImage(title: String?, imagePath: String?) {
        guard let imagePath = imagePath, let url = URL(string: imagePath) else { return }
        userImageView?.sd_setImage(with: url)
    }
}
