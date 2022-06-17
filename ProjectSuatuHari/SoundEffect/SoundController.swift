//
//  SoundController.swift
//  ProjectSuatuHari
//
//  Created by Eldwin Anthony on 16/06/22.
//

import Foundation
import AVFoundation

let pathToSound = Bundle.main.path(forResource: "buttonsound", ofType: "wav")
let buttonsound = URL(fileURLWithPath: pathToSound!)

let pathSound2 = Bundle.main.path(forResource: "nextactivitysound", ofType: "wav")
let nextactivitysound = URL(fileURLWithPath: pathSound2!)

let pathSound3 = Bundle.main.path(forResource: "guidelineandsetting", ofType: "wav")
let guidelinesettingsound = URL(fileURLWithPath: pathSound3!)

var audioPlayer: AVAudioPlayer?

func playButtonSound(){
    do{
        audioPlayer = try AVAudioPlayer(contentsOf: buttonsound)
        audioPlayer?.play()
    }
    catch{
        print(error)
    }
}

func playNextActivitySound(){
    do{
        audioPlayer = try AVAudioPlayer(contentsOf: nextactivitysound)
        audioPlayer?.play()
    }
    catch{
        print(error)
    }
}

func playGuidelineSettingSound(){
    do{
        audioPlayer = try AVAudioPlayer(contentsOf: guidelinesettingsound)
        audioPlayer?.play()
    }
    catch{
        print(error)
    }
}
