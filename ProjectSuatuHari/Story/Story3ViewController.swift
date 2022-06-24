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
    @IBOutlet weak var elephantIndicator: UIView!
    
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
        
        //set the indicator view to circle
        elephantIndicator.backgroundColor = UIColor.white.withAlphaComponent(0.6)
        elephantIndicator.isOpaque = false
        elephantIndicator.layer.cornerRadius =  elephantIndicator.frame.size.width/2
        elephantIndicator.clipsToBounds = true
        elephantIndicator.isHidden = false

    }
    
    
    
    //function to animate indicator view
    @objc func animate(){
        UIView.animate(withDuration: 0.5, animations: {
            self.grassIndicator.isHidden = false
            self.grassIndicator.frame = CGRect(x: 547, y: 596, width: 65, height: 65)
            
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
            self.grassIndicator.frame = CGRect(x: 547, y: 596, width: 50, height: 50)
            
        }, completion: { done in
            self.animate()
        })
        
    }
    
    @objc func animateElephant(){
        UIView.animate(withDuration: 0.5, animations: {
            self.elephantIndicator.isHidden = false
            self.elephantIndicator.frame = CGRect(x: 1079, y: 446, width: 150, height: 150)
            
        }, completion: { done in
            if done{
                UIView.animate(withDuration: 0.5, animations: {
                    self.shrinkElephant()
                })
            }
        })
    }
    
    
    
    @objc func shrinkElephant(){
        UIView.animate(withDuration: 0.5, animations: {
            self.elephantIndicator.frame = CGRect(x: 1079, y: 446, width: 120, height: 120)
            
        }, completion: { done in
            self.animateElephant()
        })
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        fadeInPrompt()
        animateElephant()
    }
    
    @IBAction func elephantPressed(_ sender: Any) {
        playElephantSound()
    }
    
    //grass pressed:
    @IBAction func grassPressed(_ sender: Any) {
        circleImage.isHidden = false
        playNextActivitySound()
        if grassflag == 0 {
            grassIndicator.isHidden = true
        }
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


