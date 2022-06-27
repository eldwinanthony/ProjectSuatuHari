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



let pathToWrongSound = Bundle.main.path(forResource: "wrong", ofType: "wav")
let wrongchoice = URL(fileURLWithPath: pathToWrongSound!)

let pathToElephantSound = Bundle.main.path(forResource: "elephant-trumpets-growls-6047", ofType: "mp3")
let elephanttapped = URL(fileURLWithPath: pathToElephantSound!)

let pathToLionSound = Bundle.main.path(forResource: "lionroar", ofType: "mp3")
let liontapped = URL(fileURLWithPath: pathToLionSound!)

let pathToSoundAnak = Bundle.main.path(forResource: "SoundKuinsi", ofType: "wav")
let anaktapped = URL(fileURLWithPath: pathToSoundAnak!)

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

func playSoundAnak(){
    do{
        audioPlayer = try AVAudioPlayer(contentsOf: anaktapped)
        audioPlayer?.play()
    }
    catch{
        print(error)
    }
}

func stopSoundAnak(){
    do{
        audioPlayer = try AVAudioPlayer(contentsOf: anaktapped)
        audioPlayer?.stop()
    }
    catch{
        print(error)
    }
}


let pathBackgroundSound = Bundle.main.path(forResource: "fm-freemusic-cheerful-whistling", ofType: "mp3")
let backgroundSound = URL(fileURLWithPath: pathBackgroundSound!)

var backgroundAudioPlayer: AVAudioPlayer?

func playBackgroundSoundHome(){
    do{
        backgroundAudioPlayer = try AVAudioPlayer(contentsOf: backgroundSound)
        backgroundAudioPlayer?.play()
        backgroundAudioPlayer?.numberOfLoops = -1
        backgroundAudioPlayer?.volume = 0.6
    }
    catch{
        print(error)
    }
}

func playBackgroundSoundStory(){
    do{
        backgroundAudioPlayer = try AVAudioPlayer(contentsOf: backgroundSound)
        backgroundAudioPlayer?.play()
        backgroundAudioPlayer?.numberOfLoops = -1
        backgroundAudioPlayer?.volume = 0.2
    }
    catch{
        print(error)
    }
}

func stopBackgroundSound(){
    do{
        audioPlayer = try AVAudioPlayer(contentsOf: backgroundSound)
        backgroundAudioPlayer?.stop()
    }
    catch{
        print(error)
    }
}
