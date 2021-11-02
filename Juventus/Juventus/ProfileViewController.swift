//
//  ProfileViewController.swift
//  Juventus
//
//  Created by Yuan Liu on 09/03/2021.
//

import UIKit

class ProfileViewController: UIViewController {

   
    //@IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var profileTextView: UITextView!
    
      
    var playerData: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //teamData = Team(fromXMLFile: "players.xml")
        // Do any additional setup after loading the view.
        
        //nameLabel.text = playerData.name
        profileTextView.isScrollEnabled = true
        profileTextView.text = playerData.profile
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue3"{
            let destController = segue.destination as!WebViewController
            destController.playerData = playerData
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
}
