//
//  Story5ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 24/06/22.
//

import UIKit

class Story5ViewController: UIViewController {

    @IBOutlet weak var lionIndicator: UIView!
    @IBOutlet weak var Prompt: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        StarTotal += 1
        
        //set the indicator view to circle
        lionIndicator.backgroundColor = UIColor.white.withAlphaComponent(0.6)
        lionIndicator.isOpaque = false
        lionIndicator.layer.cornerRadius = lionIndicator.frame.size.width/2
        lionIndicator.clipsToBounds = true
        lionIndicator.isHidden = false
        
        Prompt.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        animate()
        fadeInPrompt()
    }
    
    //function to animate indicator view
    @objc func animate(){
        UIView.animate(withDuration: 0.5, animations: {
            self.lionIndicator.frame = CGRect(x: 833, y: 370, width: 150, height: 150)
            
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
            self.lionIndicator.frame = CGRect(x: 833, y: 370, width: 135, height: 135)
            
        }, completion: { done in
            self.animate()
        })
        
    }

    @IBAction func lionTapped(_ sender: Any) {
        playLionSound()
    }
    
    func fadeInPrompt(){
        UIView.animate(withDuration: 2, animations: {
            self.Prompt.alpha = 1
        })
    }
}
