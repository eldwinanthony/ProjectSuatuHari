//
//  StorySoundController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 23/06/22.
//

import Foundation
import AVFoundation

let pathToWrongSound = Bundle.main.path(forResource: "wrong", ofType: "wav")
let wrongchoice = URL(fileURLWithPath: pathToWrongSound!)

func playWrongSound(){
    do{
        audioPlayer = try AVAudioPlayer(contentsOf: wrongchoice)
        audioPlayer?.play()
    }
    catch{
        print(error)
    }
}

