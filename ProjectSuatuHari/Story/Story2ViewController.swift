//
//  Story6ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 17/06/22.
//

import UIKit

class Story2ViewController: UIViewController {
    
    //set Outlets
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var Prompt: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //make buttons to circle
        button2.layer.cornerRadius = button2.frame.size.width/2
        button2.clipsToBounds = true
        button3.layer.cornerRadius = button2.frame.size.width/2
        button3.clipsToBounds = true
        button4.layer.cornerRadius = button2.frame.size.width/2
        button4.clipsToBounds = true
        button5.layer.cornerRadius = button2.frame.size.width/2
        button5.clipsToBounds = true
        
        Prompt.alpha = 0
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        fadeInText()
    }

    //button 2 press
    @IBAction func button2TouchDown(_ sender: Any) {
        button2.backgroundColor = UIColor.red
    }
    
    //button 2 release
    @IBAction func button2TouchUpInside(_ sender: Any) {
        playWrongSound()//nanti diganti sound suara salah
        button2.backgroundColor = UIColor.systemCyan
    }
    
    //button 3 press
    @IBAction func button3TouchDown(_ sender: Any) {
        button3.backgroundColor = UIColor.red
    }
    
    //button 3 release
    @IBAction func button3TouchUpInside(_ sender: Any) {
        playWrongSound()//nanti diganti sound suara salah
        button3.backgroundColor = UIColor.systemCyan
    }
    
    //button 5 press
    @IBAction func button5TouchDown(_ sender: Any) {
        button5.backgroundColor = UIColor.red
    }
    
    //button 5 release
    @IBAction func button5TouchUpInside(_ sender: Any) {
        playWrongSound()//nanti diganti sound suara salah
        button5.backgroundColor = UIColor.systemCyan
    }
    
    //prev button pressed:
    @IBAction func prevBtnPressed(_ sender: Any) {
        playButtonSound()
    }
    
    //button 4 pressed:
    @IBAction func button4Pressed(_ sender: Any) {
        playNextActivitySound()
        button4.backgroundColor = UIColor.green
    }
    
    func fadeInText(){
        UIView.animate(withDuration: 2, animations: {
            self.Prompt.alpha = 1
        })
    }
}

