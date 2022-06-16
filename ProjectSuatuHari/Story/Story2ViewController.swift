//
//  Story1ViewController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 16/06/22.
//

import UIKit

//Antrian Tiket + Activity
class Story2ViewController: UIViewController {

    @IBOutlet weak var merahBtn: UIButton!
    @IBOutlet weak var biruBtn: UIButton!
    @IBOutlet weak var kuningBtn: UIButton!
    @IBOutlet weak var hijauBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //radius button merah
        biruBtn.layer.cornerRadius = 20
        
        //radius button biru
        merahBtn.layer.cornerRadius = 20
        
        //radius button kuning
        kuningBtn.layer.cornerRadius = 20
        
        //radius button hijau
        hijauBtn.layer.cornerRadius = 20
    }
    

}
