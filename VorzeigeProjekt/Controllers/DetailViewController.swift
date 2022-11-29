//
//  DetailViewController.swift
//  VorzeigeProjekt
//
//  Created by Jacqueline Schmitz on 24.11.22.
//

import UIKit


    
class DetailTableViewController: UITableViewController {
    
    
    
    @IBOutlet weak var makeupsTableView: UITableView!
    
    var makeup = [
        MakeUp(image: UIImage(named: "lippenstift")!, name: "Lippenstift", preis: 9.99),
        MakeUp(image: UIImage(named: "mascara")!, name: "Mascara", preis: 11.99),
        MakeUp(image:UIImage(named: "lidschatten")!, name: "Lidschatten", preis: 15.99)]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeupsTableView.dataSource = self
        makeupsTableView.delegate = self
        
    }
}
    
    extension DetailTableViewController {
        
       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return makeup.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = makeupsTableView.dequeueReusableCell(withIdentifier: "makeupCell", for: indexPath)
            var content = cell.defaultContentConfiguration()
           content.text = makeup[indexPath.row].name
            cell.contentConfiguration = content
            return cell
        }
        
        
    }

