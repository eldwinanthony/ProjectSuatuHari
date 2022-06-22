//
//  Story1ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 22/06/22.
//

import UIKit

class Story1ViewController: UIViewController {

    @IBOutlet weak var girlIndicator: UIView!
    @IBOutlet weak var labelChat: UILabel!
    @IBOutlet weak var bubbleChat: UIImageView!
    @IBOutlet weak var closeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        girlIndicator.backgroundColor = UIColor.white.withAlphaComponent(0.6)
        girlIndicator.isOpaque = false
        girlIndicator.layer.cornerRadius = girlIndicator.frame.size.width/2
        girlIndicator.clipsToBounds = true
        girlIndicator.isHidden = false
        
        labelChat.isHidden = true
        bubbleChat.isHidden = true
        closeBtn.isHidden = true
        
        animate()
    }
    
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
    
    func shrink(){
        UIView.animate(withDuration: 0.5, animations: {
            self.girlIndicator.frame = CGRect(x: 864, y: 679, width: 60, height: 60)
            
        }, completion: { done in
            self.animate()
        })
        
    }
    
    @IBAction func kidPressed(_ sender: Any) {
        playButtonSound()
        labelChat.isHidden = false
        bubbleChat.isHidden = false
        closeBtn.isHidden = false
        girlIndicator.isHidden = true
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        labelChat.isHidden = true
        bubbleChat.isHidden = true
        closeBtn.isHidden = true
        girlIndicator.isHidden = false
    }
    
    @IBAction func nextScenePressed(_ sender: Any) {
        playNextActivitySound()
    }
}
