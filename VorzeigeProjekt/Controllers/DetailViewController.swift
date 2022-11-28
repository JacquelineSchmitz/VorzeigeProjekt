//
//  DetailViewController.swift
//  VorzeigeProjekt
//
//  Created by Jacqueline Schmitz on 24.11.22.
//

import UIKit


    
class DetailViewController: UIViewController {
    
    
    
    @IBOutlet weak var makeUpsTableView: UITableView!
    
    var makeup = [
        MakeUp(image: UIImage(named: "lippenstift")!, name: "Lippenstift", preis: 9.99),
        MakeUp(image: UIImage(named: "mascara")!, name: "Mascara", preis: 11.99),
        MakeUp(image:UIImage(named: "lidschatten")!, name: "Lidschatten", preis: 15.99)]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUpsTableView.dataSource = self
        makeUpsTableView.delegate = self
        
    }
}
    
    extension DetailViewController: UITableViewDataSource, UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return makeup.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = makeUpsTableView.dequeueReusableCell(withIdentifier: "makeupCell", for: indexPath)
            var content = cell.defaultContentConfiguration()
           content.text = makeup[indexPath.row].name
            cell.contentConfiguration = content
            return cell
        }
        
        
    }

