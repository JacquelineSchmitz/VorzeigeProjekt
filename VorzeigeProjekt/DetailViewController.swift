//
//  DetailViewController.swift
//  VorzeigeProjekt
//
//  Created by Jacqueline Schmitz on 24.11.22.
//

import UIKit

struct MakeUp {
    
    let lippenstift: String
    let mascara: String
    let lidschatten: String
    
}
    
class DetailTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var makeUpsTableView: UITableView!
    
    var makeUp = [
        MakeUp(lippenstift: "Preis 9.99", mascara: "Preis 10.99", lidschatten: "Preis 15.99"),
        
        MakeUp(lippenstift: "Preis 9.99", mascara: "Preis 10.99", lidschatten: "Preis 15.99") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUpsTableView.dataSource = self
        makeUpsTableView.delegate = self
        
    }
}

    extension DetailTableViewController: UITableViewDataSource, UITableViewDelegate {
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return makeUp.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = makeUp[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }


}
