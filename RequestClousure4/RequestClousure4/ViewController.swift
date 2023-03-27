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
        setupTableView()
        setupRequest()
    }
    
    func setupRequest() {
        request.pizzaRequest { myRequestPizza in
            self.request.arrayPizza = myRequestPizza
            self.myTableView.reloadData()
        }
    }
    
    func setupTableView() {
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
        let UINIB = UINib(nibName: "MyTableViewCell", bundle: nil)
        myTableView.register(UINIB, forCellReuseIdentifier: "Cell")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.request.arrayPizza?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyTableViewCell {
            cell.setupCell(myCustomCell: self.request.arrayPizza?[indexPath.row])
            return cell
        }
        return UITableViewCell()
        }
    }

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
