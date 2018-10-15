//
//  ColorsViewController.swift
//  Colors
//
//  Created by Sarah Wooldridge on 9/23/18.
//  Copyright © 2018 Sarah Wooldridge. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var colors = [Color(name: "red", uiColor: UIColor.red),
    Color(name: "orange", uiColor: UIColor.orange),
    Color(name: "yellow", uiColor: UIColor.yellow),
    Color(name: "green", uiColor: UIColor.green),
    Color(name: "blue", uiColor: UIColor.blue),
    Color(name: "purple", uiColor: UIColor.purple),
    Color(name: "brown", uiColor: UIColor.brown)]
   // var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell" , for: indexPath)
        
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.uiColor
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
