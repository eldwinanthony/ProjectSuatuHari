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
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var starView: UIView!
    @IBOutlet weak var charButton: UIButton!
    @IBOutlet weak var checkpointButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set radius and shadow to starView
        starView.layer.cornerRadius = 10
        starView.layer.shadowColor = UIColor.black.cgColor
        starView.layer.shadowOpacity = 0.5
        starView.layer.shadowOffset = .zero
        starView.layer.shadowRadius = 2
        starView.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        
        
    }
    
    @IBAction func charButtonPressed(_ sender: Any) {
        playButtonSound()
    }
    
    @IBAction func learningButtonPressed(_ sender: Any) {
        playButtonSound()
    }
    @IBAction func guidelineButtonPressed(_ sender: Any) {
        playGuidelineSettingSound()
    }
    @IBAction func settingButtonPressed(_ sender: Any) {
        playGuidelineSettingSound()
    }
    
}



