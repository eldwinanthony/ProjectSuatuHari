//
//  Story3ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 22/06/22.
//

import UIKit

class Story3ViewController: UIViewController {
    
    //define the outlets
    @IBOutlet weak var circleImage: UIImageView!
    @IBOutlet weak var xImageApple: UIImageView!
    @IBOutlet weak var xImageCarrot: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //hide the x and o
        circleImage.isHidden = true
        xImageApple.isHidden = true
        xImageCarrot.isHidden = true
        
        UIView.animate(withDuration: 1, animations: {
            self.circleImage.alpha = 0
        })
    }

    @IBAction func grassPressed(_ sender: Any) {
        circleImage.isHidden = false
        playNextActivitySound()
    }
    @IBAction func applePressed(_ sender: Any) {
        xImageApple.isHidden = false
    }
    @IBAction func carrotPressed(_ sender: Any) {
        xImageCarrot.isHidden = false
    }
}


