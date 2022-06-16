//
//  Story4ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 16/06/22.
//

import UIKit

class Story4ViewController: UIViewController {

    @IBOutlet weak var wordContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set wordContainer to transparent
        wordContainer.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        wordContainer.isOpaque = false

        // Do any additional setup after loading the view.
    }

}
