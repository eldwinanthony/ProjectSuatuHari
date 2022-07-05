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

var newaudioPlayer: AVAudioPlayer?

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

let pathToSoundApel = Bundle.main.path(forResource: "IniApel", ofType: "m4a")
let apeltapped = URL(fileURLWithPath: pathToSoundApel!)

let pathToSoundCoklat = Bundle.main.path(forResource: "IniCoklat", ofType: "m4a")
let coklattapped = URL(fileURLWithPath: pathToSoundCoklat!)

let pathToSoundMerah = Bundle.main.path(forResource: "IniMerah", ofType: "m4a")
let merahtapped = URL(fileURLWithPath: pathToSoundMerah!)

let pathToSoundOren = Bundle.main.path(forResource: "IniOren", ofType: "m4a")
let orentapped = URL(fileURLWithPath: pathToSoundOren!)

let pathToSoundRumput = Bundle.main.path(forResource: "IniRumput", ofType: "m4a")
let rumputtapped = URL(fileURLWithPath: pathToSoundRumput!)

let pathToSoundUngu = Bundle.main.path(forResource: "IniUngu", ofType: "m4a")
let ungutapped = URL(fileURLWithPath: pathToSoundUngu!)

let pathToSoundWortel = Bundle.main.path(forResource: "IniWortel", ofType: "m4a")
let worteltapped = URL(fileURLWithPath: pathToSoundWortel!)

let pathToBerhasilSound = Bundle.main.path(forResource: "BerhasilSoundEffect", ofType: "m4a")
let soundberhasil = URL(fileURLWithPath: pathToBerhasilSound!)


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

func playApelSound(){
    do{
        newaudioPlayer = try AVAudioPlayer(contentsOf: apeltapped)
        newaudioPlayer?.play()
    }
    catch{
        print(error)
    }
}

func playCoklatSound(){
    do{
        newaudioPlayer = try AVAudioPlayer(contentsOf: coklattapped)
        newaudioPlayer?.play()
    }
    catch{
        print(error)
    }
}

func playBerhasilSound(){
    do{
        newaudioPlayer = try AVAudioPlayer(contentsOf: soundberhasil)
        newaudioPlayer?.play()
    }
    catch{
        print(error)
    }
}

func playMerahSound(){
    do{
        newaudioPlayer = try AVAudioPlayer(contentsOf: merahtapped)
        newaudioPlayer?.play()
    }
    catch{
        print(error)
    }
}

func playOrenSound(){
    do{
        newaudioPlayer = try AVAudioPlayer(contentsOf: orentapped)
        newaudioPlayer?.play()
    }
    catch{
        print(error)
    }
}

func playRumputSound(){
    do{
        newaudioPlayer = try AVAudioPlayer(contentsOf: rumputtapped)
        newaudioPlayer?.play()
    }
    catch{
        print(error)
    }
}

func playUnguSound(){
    do{
        newaudioPlayer = try AVAudioPlayer(contentsOf: ungutapped)
        newaudioPlayer?.play()
    }
    catch{
        print(error)
    }
}

func playWortelSound(){
    do{
        newaudioPlayer = try AVAudioPlayer(contentsOf: worteltapped)
        newaudioPlayer?.play()
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
        backgroundAudioPlayer?.volume = 0.12
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
        backgroundAudioPlayer?.volume = 0.04
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
