//
//  ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 16/06/22.
//

//
//  ViewController.swift
//  SuatuHari
//
//  Created by Eldwin Anthony on 14/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circleViewChar: UIView!
    @IBOutlet weak var charButton: UIButton!
    @IBOutlet weak var checkpointButton: UIButton!
    @IBOutlet weak var circleViewCheckpoint: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set uiview to circlechar
        circleViewChar.layer.cornerRadius = circleViewChar.layer.bounds.width / 2
        circleViewChar.clipsToBounds = true
        
        //set radius and shadow to charbutton
        charButton.layer.cornerRadius = 40
        charButton.layer.shadowColor = UIColor.black.cgColor
        charButton.layer.shadowOpacity = 0.4
        charButton.layer.shadowOffset = .zero
        charButton.layer.shadowRadius = 10
        charButton.layer.shadowOffset = CGSize(width: 0.0, height: 9.0)
        
        //set uiview to circlecheckpoint
        circleViewCheckpoint.layer.cornerRadius = circleViewChar.layer.bounds.width / 2
        circleViewCheckpoint.clipsToBounds = true
        
        //set radius and shadow to checkpointbutton
        checkpointButton.layer.cornerRadius = 40
        checkpointButton.layer.shadowColor = UIColor.black.cgColor
        checkpointButton.layer.shadowOpacity = 0.4
        checkpointButton.layer.shadowOffset = .zero
        checkpointButton.layer.shadowRadius = 10
        checkpointButton.layer.shadowOffset = CGSize(width: 0.0, height: 9.0)
        
        
        
    }
    
}



