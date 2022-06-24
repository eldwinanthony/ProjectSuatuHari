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

let pathToElephantSound = Bundle.main.path(forResource: "elephant-trumpets-growls-6047", ofType: "mp3")
let elephanttapped = URL(fileURLWithPath: pathToElephantSound!)

let pathToLionSound = Bundle.main.path(forResource: "lionroar", ofType: "mp3")
let liontapped = URL(fileURLWithPath: pathToLionSound!)

func playWrongSound(){
    do{
        audioPlayer = try AVAudioPlayer(contentsOf: wrongchoice)
        audioPlayer?.play()
    }
    catch{
        print(error)
    }
}

func playElephantSound(){
    do{
        audioPlayer = try AVAudioPlayer(contentsOf: elephanttapped)
        audioPlayer?.play()
    }
    catch{
        print(error)
    }
}

func playLionSound(){
    do{
        audioPlayer = try AVAudioPlayer(contentsOf: liontapped)
        audioPlayer?.play()
    }
    catch{
        print(error)
    }
}



