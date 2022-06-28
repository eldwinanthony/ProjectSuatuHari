//
//  Setting_ViewController.swift
//  ProjectSuatuHari
//
//  Created by Kevin Stanislaus Nugraha on 27/06/22.
//

import UIKit

class Setting_ViewController: UIViewController {
    
    let gambar1 = UIImage(systemName: "chevron.down")
    let gambar2 = UIImage(systemName: "chevron.up")
    
    
    let flag1 = UIImage(systemName: "speaker.wave.2.fill")
    let flag2 = UIImage(systemName: "speaker.slash.fill")
    
    var temp:Int! = 0
    
    @IBOutlet weak var PopUpTime: UIButton!
    
    @IBOutlet weak var SwitchAudio: UISwitch!
    @IBOutlet weak var VolumeButton: UIButton!{
        didSet {
            VolumeButton.setImage(flag2, for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PopUpWaktu()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var SettingView1: UIView!{
        didSet{
            SettingView1.layer.shadowOffset = CGSize(width: 10, height: 10)
            SettingView1.layer.shadowRadius = 10.0
            SettingView1.layer.shadowOpacity = 0.4
            
        }
    }
    
    @IBOutlet weak var SettingView2: UIView!{
        didSet{
            SettingView2.layer.shadowOffset = CGSize(width: 10, height: 10)
            SettingView2.layer.shadowRadius = 10.0
            SettingView2.layer.shadowOpacity = 0.4
            
        }
    }
    
    @IBOutlet weak var SettingView3: UIView!{
        didSet{
            SettingView3.layer.shadowOffset = CGSize(width: 10, height: 10)
            SettingView3.layer.shadowRadius = 10.0
            SettingView3.layer.shadowOpacity = 0.4
            
        }
    }
    
    func PopUpWaktu(){
        let pilihan = {(flag : UIAction) in print(flag.title)}
        
        PopUpTime.setImage(gambar2, for: UIControl.State.normal)
        
        
        if PopUpTime.isSelected{
            PopUpTime.setImage(gambar1, for: UIControl.State.selected)
        }
        
        PopUpTime.menu = UIMenu(children : [
            UIAction(title: "15 Menit  ", state: .on, handler: pilihan),
            UIAction(title: "30 Menit  ", handler: pilihan),
            UIAction(title: "45 Menit  ", handler: pilihan),
            UIAction(title: "60 Menit  ", handler: pilihan)])
        
        
        PopUpTime.showsMenuAsPrimaryAction = true
        PopUpTime.changesSelectionAsPrimaryAction = true
    }
    
    
    func ubahvolume(){
        var penampung1 = 0
        
        
        
        
        if VolumeButton.isSelected{
            penampung1 = 1
            
            
        }
        
        if penampung1 == 1{
            VolumeButton.setImage(flag1, for: UIControl.State.normal)
        }else{
            VolumeButton.setImage(flag2, for: UIControl.State.normal)}
        
        
    }
    @IBAction
    func Switcher(){
        do{
            temp = (temp + 1) % 2
            print(temp)
            if temp==1{
                VolumeButton.setImage(flag1, for: .normal)
                VolumeButton.tintColor = UIColor.systemGreen
            }
            else{
                VolumeButton.setImage(flag2, for: .normal)
                VolumeButton.tintColor =
                UIColor.systemGray
            }
        }
        
        
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
