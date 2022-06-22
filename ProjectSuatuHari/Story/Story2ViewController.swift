//
//  Story6ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 17/06/22.
//

import UIKit

class Story2ViewController: UIViewController {

    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button2.layer.cornerRadius = button2.frame.size.width/2
        button2.clipsToBounds = true
        
        button3.layer.cornerRadius = button2.frame.size.width/2
        button3.clipsToBounds = true
        
        button4.layer.cornerRadius = button2.frame.size.width/2
        button4.clipsToBounds = true
        
        button5.layer.cornerRadius = button2.frame.size.width/2
        button5.clipsToBounds = true
        
        
    }

    @IBAction func prevBtnPressed(_ sender: Any) {
        playButtonSound()
    }
    
    @IBAction func button4Pressed(_ sender: Any) {
        playNextActivitySound()
        button4.backgroundColor = UIColor.green
    }
}

