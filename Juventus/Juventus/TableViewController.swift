//
//  TableViewController.swift
//  Juventus
//
//  Created by Yuan Liu on 08/03/2021.
//

import UIKit

class TableViewController: UITableViewController {
    var teamData: Team!
    override func viewDidLoad() {
        super.viewDidLoad()
        //make the data available
        teamData = Team(fromXMLFile: "players.xml")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return teamData.getCount()
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        cell.textLabel!.text = teamData.getPlayer(index: indexPath.row).name
        cell.detailTextLabel!.text = teamData.getPlayer(index: indexPath.row).position
        cell.imageView?.image = UIImage(named: teamData.getPlayer(index: indexPath.row).image)
        return cell
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1"{
            let destController = segue.destination as!PlayerViewController
            let indexPath = tableView.indexPath(for: sender as! UITableViewCell)
            destController.playerData = teamData.getPlayer(index: indexPath!.row)
        }
            
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
