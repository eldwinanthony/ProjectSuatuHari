//
//  CharViewController.swift
//  ProjectSuatuHari
//
//  Created by Jason Fernando on 21/06/22.
//

import UIKit

class CharViewController: UIViewController{
    
    @IBOutlet var shirtButton: UIButton!
    @IBOutlet var shirtButton2: UIButton!
    @IBOutlet weak var dummy: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Circle Button
        shirtButton.layer.cornerRadius = shirtButton.frame.width/2
        shirtButton.layer.masksToBounds = true
        
        shirtButton2.layer.cornerRadius = shirtButton.frame.width/2
        shirtButton2.layer.masksToBounds = true
        
        // Set Image
        shirtButton.setImage(UIImage(named:"unselected"), for: .normal)
        shirtButton2.setImage(UIImage(named:"unselected"), for: .normal)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        stopBackgroundSound()
    }
    
    @IBAction func backPressed(_ sender: Any) {
        playButtonSound()
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        
        clearSelectedState()
    
        sender.isSelected = true
        sender.setImage(UIImage(named:"selected"), for: .selected)
        if sender.isEqual(shirtButton){
            dummy.image = UIImage(named: "cowoor")
        } else if sender.isEqual(shirtButton2) {
            dummy.image = UIImage(named:"ceweor")
        }
    }
    
    func clearSelectedState() {
        
        [shirtButton, shirtButton2].forEach {
            $0!.isSelected = false
            $0!.setImage(UIImage(named:"unselected"), for: .normal)
        }
        
    }
}

