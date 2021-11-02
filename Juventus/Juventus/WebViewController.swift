//
//  WebViewController.swift
//  Juventus
//
//  Created by Yuan Liu on 09/03/2021.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    var url:String?
    @IBOutlet weak var WebView: WKWebView!
    var playerData: Player!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        WebView.load(URLRequest(url:URL(string:playerData.url)!))
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
