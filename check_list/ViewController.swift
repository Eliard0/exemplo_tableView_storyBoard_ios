//
//  ViewController.swift
//  check_list
//
//  Created by Eliardo Venancio on 03/09/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tabela: UITableView!
    
    var elements = [["name": "name1"],["name": "name2"], ["name": "name3"]]
    
    override func viewDidLoad() {
        tabela.delegate = self
        tabela.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Listas"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ListCell"
        let cell:ListCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! ListCell
        
        let dictionary = elements[indexPath.row]
        
        let name = dictionary["name"]
        cell.titulo.text = name

        return cell
    }
    
}

