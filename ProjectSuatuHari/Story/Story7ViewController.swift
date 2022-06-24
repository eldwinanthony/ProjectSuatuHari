//
//  Story7ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 24/06/22.
//

import UIKit

class Story7ViewController: UIViewController {

    @IBOutlet weak var Prompt: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Prompt.alpha = 0
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        fadeInPrompt()
    }

    func fadeInPrompt(){
        UIView.animate(withDuration: 2, animations: {
            self.Prompt.alpha = 1
        })
    }
}
