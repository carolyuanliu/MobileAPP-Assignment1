//
//  PlayerViewController.swift
//  Juventus
//
//  Created by Yuan Liu on 08/03/2021.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet weak var playerImageView: UIImageView!
    
    @IBOutlet weak var playerNameLabel: UILabel!
    
    @IBOutlet weak var playerPositionLabel: UILabel!
    
    @IBOutlet weak var playerDateOfBirthLabel: UILabel!
    
    @IBOutlet weak var playerNationalityLabel: UILabel!
    
    @IBOutlet weak var playerNumberLabel: UILabel!
    
    @IBAction func printButtton(_ sender: Any) {
        print(playerData.profile)
    }
    
    
    var playerData: Player!
    var teamData: Team!
    override func viewDidLoad() {
        super.viewDidLoad()
        teamData = Team(fromXMLFile: "players.xml")
        
        // Do any additional setup after loading the view.
        playerNameLabel.text = playerData.name
        playerImageView.image = UIImage(named: playerData.image)
        playerPositionLabel.text = playerData.position
        playerNationalityLabel.text = playerData.nationality
        playerDateOfBirthLabel.text = playerData.dateOfBirth
        playerNumberLabel.text = playerData.number
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue2"{
            let destController = segue.destination as!ProfileViewController
            //let indexPath = tableView.indexPath(for: sender as! UITableViewCell)
            destController.playerData = playerData
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
