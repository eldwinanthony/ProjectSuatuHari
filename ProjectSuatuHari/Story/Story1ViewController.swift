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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the indicator view to circle
        girlIndicator.backgroundColor = UIColor.white.withAlphaComponent(0.6)
        girlIndicator.isOpaque = false
        girlIndicator.layer.cornerRadius = girlIndicator.frame.size.width/2
        girlIndicator.clipsToBounds = true
        girlIndicator.isHidden = false
        
        //hide chat bubble at first
        labelChat.isHidden = true
        bubbleChat.isHidden = true
        closeBtn.isHidden = true
        
        //animate the indicator view
        animate()
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
        labelChat.isHidden = false
        bubbleChat.isHidden = false
        closeBtn.isHidden = false
        girlIndicator.isHidden = true
    }
    
    //when the close button in chat bubble pressed:
    @IBAction func closeBtnPressed(_ sender: Any) {
        labelChat.isHidden = true
        bubbleChat.isHidden = true
        closeBtn.isHidden = true
        girlIndicator.isHidden = false
    }
    
    //when next arrow pressed:
    @IBAction func nextScenePressed(_ sender: Any) {
        playButtonSound()
    }
}
