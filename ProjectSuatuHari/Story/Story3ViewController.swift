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
    @IBOutlet weak var grassIndicator: UIView!
    
    var grassflag = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //hide the x and o
        circleImage.isHidden = true
        xImageApple.isHidden = true
        xImageCarrot.isHidden = true
        
        promptKandangGajah.alpha = 0
        
        //set the indicator view to circle
        grassIndicator.backgroundColor = UIColor.white.withAlphaComponent(0.6)
        grassIndicator.isOpaque = false
        grassIndicator.layer.cornerRadius =  grassIndicator.frame.size.width/2
        grassIndicator.clipsToBounds = true
        grassIndicator.isHidden = true

    }
    
    //function to animate indicator view
    @objc func animate(){
        UIView.animate(withDuration: 0.5, animations: {
            self.grassIndicator.isHidden = false
            self.grassIndicator.frame = CGRect(x: 547, y: 596, width: 75, height: 75)
            
        }, completion: { done in
            if done{
                UIView.animate(withDuration: 0.5, animations: {
                    self.shrink()
                })
            }
        })
    }
    
    //function to shrink indicator view
    func shrink(){
        UIView.animate(withDuration: 0.5, animations: {
            self.grassIndicator.frame = CGRect(x: 547, y: 596, width: 60, height: 60)
            
        }, completion: { done in
            self.animate()
        })
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        fadeInPrompt()
    }
    
    //grass pressed:
    @IBAction func grassPressed(_ sender: Any) {
        circleImage.isHidden = false
        grassIndicator.isHidden = true
        playNextActivitySound()
    }
    
    //apple pressed:
    @IBAction func applePressed(_ sender: Any) {
        xImageApple.isHidden = false
        playWrongSound()
        grassflag += 1
        if grassflag == 2{
            animate()
            grassflag = 0
        }
    }
    
    //carrot pressed:
    @IBAction func carrotPressed(_ sender: Any) {
        xImageCarrot.isHidden = false
        playWrongSound()
        grassflag += 1
        if grassflag == 2{
            animate()
            grassflag = 0
        }
    }
    
    func fadeInPrompt(){
        UIView.animate(withDuration: 2, animations: {
            self.promptKandangGajah.alpha = 1
        })
    }
}


