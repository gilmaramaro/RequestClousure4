//
//  MyTableViewCell.swift
//  RequestClousure4
//
//  Created by Gilmar Amaro on 27/03/23.
//

import UIKit
import SDWebImage

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var imagePizza: UIImageView!
    @IBOutlet weak var namePizza: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func setupCell(myCustomCell: PizzaElement?) {
        let urlImage = URL(string: myCustomCell?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
        namePizza.text = myCustomCell?.name
    }
}
