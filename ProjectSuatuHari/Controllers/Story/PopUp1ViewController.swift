//
//  PopUp1ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 22/06/22.
//

import UIKit

class PopUp1ViewController: UIViewController, UIAdaptivePresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.isUserInteractionEnabled = false
        self.isModalInPresentation = false
        playBerhasilSound()
    }
    
    func presentationControllerShouldDismiss(_ presentationController: UIPresentationController) -> Bool {
        return false
    }
    
    

    @IBAction func lanjutBtn(_ sender: Any) {
        playButtonSound()
    }
    

}
