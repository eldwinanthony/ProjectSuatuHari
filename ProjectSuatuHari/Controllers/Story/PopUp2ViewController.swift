//
//  PopUp2ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 24/06/22.
//

import UIKit

class PopUp2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.isModalInPresentation = false
        playBerhasilSound()
        // Do any additional setup after loading the view.
    }
    

  
    @IBAction func lanjutPressed(_ sender: Any) {
        playButtonSound()
    }
    
}
