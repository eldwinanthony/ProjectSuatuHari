//
//  Story6ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 24/06/22.
//

import UIKit

class Story6ViewController: UIViewController {

    @IBOutlet weak var scopemerah: UIImageView!
    @IBOutlet weak var scopecokelat: UIImageView!
    @IBOutlet weak var Prompt: UIImageView!
    @IBOutlet weak var xmarkungu: UIImageView!
    @IBOutlet weak var xmarkorange: UIImageView!
    @IBOutlet weak var checkmarkmerah: UIImageView!
    @IBOutlet weak var checkmarkcoklat: UIImageView!
    
    var flag = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Prompt.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        xmarkungu.isHidden = true
        xmarkorange.isHidden = true
        checkmarkmerah.isHidden = true
        checkmarkcoklat.isHidden = true
        scopemerah.alpha = 0
        scopecokelat.alpha = 0
        fadeInPrompt()
    }
    

    @IBAction func eskrimMerahTapped(_ sender: Any) {
        playNextActivitySound()
        fadeInScopeMerah()
        playMerahSound()
        checkmarkmerah.isHidden = false
        moveSegue()
    }
    
    @IBAction func eskrimUnguTapped(_ sender: Any) {
        playUnguSound()
        playWrongSound()
        xmarkungu.isHidden = false
    }
    @IBAction func eskrimOrangeTapped(_ sender: Any) {
        playOrenSound()
        playWrongSound()
        xmarkorange.isHidden = false
    }
    
    @IBAction func eskrimCoklatTapped(_ sender: Any) {
        playCoklatSound()
        playNextActivitySound()
        fadeInScopeCoklat()
        checkmarkcoklat.isHidden = false
        moveSegue()
    }
    
    func fadeInScopeMerah(){
        UIView.animate(withDuration: 1, animations: {
            self.scopemerah.alpha = 1
        })
    }
    
    func fadeInScopeCoklat(){
        UIView.animate(withDuration: 1, animations: {
            self.scopecokelat.alpha = 1
        })
    }
    
    func fadeInPrompt(){
        UIView.animate(withDuration: 2, animations: {
            self.Prompt.alpha = 1
        })
    }
    
    func moveSegue(){
        flag += 1
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            if self.flag == 2{
                self.performSegue(withIdentifier: "toPopUp3", sender: nil)
                self.flag = 0
            }
        })
        
        
    }
}
