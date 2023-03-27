//
//  SecondViewController.swift
//  RequestClousure4
//
//  Created by Gilmar Amaro on 27/03/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel5: UILabel!
    
    var connection: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreenTwo()
    }
    
    func setupScreenTwo() {
        let urlImage = URL(string: connection?.imageURL ?? "")
        myImage.sd_setImage(with: urlImage)
        myLabel1.text = connection?.name
        myLabel2.text = " Pizza Pequena: R$\(connection?.priceP ?? 0.0)"
        myLabel3.text = " Pizza Media: R$\(connection?.priceM ?? 0.0)"
        myLabel4.text = " Pizza Grande: R$\(connection?.priceG ?? 0.0)"
        myLabel5.text = "Nota Da Pizza: \(connection?.rating ?? 0)"
    }
}
