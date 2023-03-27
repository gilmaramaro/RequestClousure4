//
//  MyTableViewCell.swift
//  RequestClousure4
//
//  Created by Gilmar Amaro on 27/03/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var imagePizza: UIImageView!
    @IBOutlet weak var namePizza: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
