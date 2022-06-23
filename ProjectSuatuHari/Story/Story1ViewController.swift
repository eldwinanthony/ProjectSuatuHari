//
//  Story1ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 22/06/22.
//

import UIKit

class Story1ViewController: UIViewController {
    
    //set outlets in scene 1
    @IBOutlet weak var girlIndicator: UIView!
    @IBOutlet weak var labelChat: UILabel!
    @IBOutlet weak var bubbleChat: UIImageView!
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var Prompt: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the indicator view to circle
        girlIndicator.backgroundColor = UIColor.white.withAlphaComponent(0.6)
        girlIndicator.isOpaque = false
        girlIndicator.layer.cornerRadius = girlIndicator.frame.size.width/2
        girlIndicator.clipsToBounds = true
        girlIndicator.isHidden = false
        
        //hide chat bubble at first
        labelChat.alpha = 0
        bubbleChat.alpha = 0
        closeBtn.alpha = 0
        
        Prompt.alpha = 0
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //animate the indicator view
        animate()
        fadeInPrompt()
    }
    
    //function to animate indicator view
    @objc func animate(){
        UIView.animate(withDuration: 0.5, animations: {
            self.girlIndicator.frame = CGRect(x: 864, y: 679, width: 70, height: 70)
            
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
            self.girlIndicator.frame = CGRect(x: 864, y: 679, width: 60, height: 60)
            
        }, completion: { done in
            self.animate()
        })
        
    }
    
    //when the kid pressed:
    @IBAction func kidPressed(_ sender: Any) {
        playButtonSound()
        fadeInText()
        
        girlIndicator.isHidden = true
        
    }
    
    //when the close button in chat bubble pressed:
    @IBAction func closeBtnPressed(_ sender: Any) {
        fadeOutText()
       
        fadeOutText()
        girlIndicator.isHidden = false
    }
    
    //when next arrow pressed:
    @IBAction func nextScenePressed(_ sender: Any) {
        playButtonSound()
    }
    
    //function to fade in text
    func fadeInText(){
        UIView.animate(withDuration: 1, animations: {
            self.labelChat.alpha = 1
            self.closeBtn.alpha = 1
            self.bubbleChat.alpha = 1
        })
    }
    
    //function to fade out text
    func fadeOutText(){
        UIView.animate(withDuration: 1, animations: {
            self.labelChat.alpha = 0
            self.closeBtn.alpha = 0
            self.bubbleChat.alpha = 0
        })
    }
    
    func fadeInPrompt(){
        UIView.animate(withDuration: 2, animations: {
            self.Prompt.alpha = 1
        })
    }
}
