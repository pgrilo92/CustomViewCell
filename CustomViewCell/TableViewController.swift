//
//  ViewController.swift
//  CustomViewCell
//
//  Created by Joaquim Patrick Ramos Grilo on 2016-09-30.
//  Copyright © 2016 Joaquim Patrick Ramos Grilo. All rights reserved.
//

import UIKit

struct cellData{
let cell: Int!
let text: String!
let image: UIImage!
}

class TableViewController: UITableViewController {
    
    var cellDataArray = [cellData]()
    
    override func viewDidLoad() {
        
        cellDataArray = [cellData(cell: 1, text: "Cell 1", image: #imageLiteral(resourceName: "sky-beach-vacation-summer")),
                         cellData(cell: 2, text: "Cell 2", image: #imageLiteral(resourceName: "sky-beach-vacation-summer")),
                         cellData(cell: 1, text: "Cell 1 once again", image: #imageLiteral(resourceName: "sky-beach-vacation-summer"))]
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellDataArray.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if cellDataArray[indexPath.row].cell == 1 {
            
            let cell = Bundle.main.loadNibNamed("TableView1", owner: self, options: nil)?.first as! TableView1
            cell.mainImage.image = cellDataArray[indexPath.row].image
            cell.mainLabel.text = cellDataArray[indexPath.row].text
            return cell

        }
        else if cellDataArray[indexPath.row].cell == 2 {
            
            let cell = Bundle.main.loadNibNamed("TableViewCell2", owner: self , options: nil)?.first as! TableViewCell2
            cell.mainImage.image = cellDataArray[indexPath.row].image
            cell.mainLabel.text = cellDataArray[indexPath.row].text
            return cell

        }
        else {
            
            let cell = Bundle.main.loadNibNamed("TableView1", owner: self , options: nil)?.first as! TableView1
            cell.mainImage.image = cellDataArray[indexPath.row].image
            cell.mainLabel.text = cellDataArray[indexPath.row].text
            return cell
            
        }
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if cellDataArray[indexPath.row].cell == 1 {
            
            return 250
            
            
        }
        else if cellDataArray[indexPath.row].cell == 2 {
            
           return 128
            
        }
        else {
       
            return 250
            
        }

        
    }
 


}

