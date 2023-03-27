//
//  ViewController.swift
//  RequestClousure4
//
//  Created by Gilmar Amaro on 27/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var request = Request()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func setupRequest() {
        request.pizzaRequest { myRequestPizza in
            self.request.arrayPizza = myRequestPizza
            self.myTableView.reloadData()
        }
    }
}

