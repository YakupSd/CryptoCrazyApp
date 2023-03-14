//
//  CryptoTableViewCell.swift
//  CryptoCrazyApp
//
//  Created by Yakup Suda on 14.03.2023.
//

import UIKit

class CryptoTableViewCell: UITableViewCell {


    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
