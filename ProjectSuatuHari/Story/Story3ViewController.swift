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
    @IBOutlet weak var promptKandangGajah: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //hide the x and o
        circleImage.isHidden = true
        xImageApple.isHidden = true
        xImageCarrot.isHidden = true
        
        promptKandangGajah.alpha = 0

    }
    
    override func viewWillAppear(_ animated: Bool) {
        fadeInPrompt()
    }
    
    //grass pressed:
    @IBAction func grassPressed(_ sender: Any) {
        circleImage.isHidden = false
        playNextActivitySound()
    }
    
    //apple pressed:
    @IBAction func applePressed(_ sender: Any) {
        xImageApple.isHidden = false
    }
    
    //carrot pressed:
    @IBAction func carrotPressed(_ sender: Any) {
        xImageCarrot.isHidden = false
    }
    
    func fadeInPrompt(){
        UIView.animate(withDuration: 2, animations: {
            self.promptKandangGajah.alpha = 1
        })
    }
}


