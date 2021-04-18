//
//  OneButtonLevelViewController.swift
//  Kindergarten Literacy
//
//  Created by Haoyun Xu on 2021/2/2.
//

import Foundation
import UIKit
import AVFoundation


class RealVowelViewController: UIViewController {
    
    var array = ["a", "a ", "e", "i", "i ", "o", "u"]
    
    var desiredLabelOne: String!
    
    var audioPlayer: AVAudioPlayer?
    
    @IBOutlet weak var myButtonOne: UIButton!
    
    @IBOutlet weak var wordButton2: UIButton!
    @IBOutlet weak var wordButton1: UIButton!
    @IBOutlet weak var wordButton3: UIButton!
    
    @IBOutlet weak var word1: UILabel!
    @IBOutlet weak var word2: UILabel!
    @IBOutlet weak var word3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myButtonOne.setTitle(desiredLabelOne, for: .normal)
        transitionAudioandImage(letter: desiredLabelOne)
    }
    
    func showText(txt: String) {
        myButtonOne.setTitle(txt, for: .normal)
    }
    
    @IBAction func prev(_ sender: Any) {
        let i = array.firstIndex(of: myButtonOne.currentTitle!)!;
        if i > 0 {
            showText(txt: array[i - 1])
        }
        transitionAudioandImage(letter: myButtonOne.currentTitle!)
    }
    
    @IBAction func next(_ sender: Any) {
        let i = array.firstIndex(of: myButtonOne.currentTitle!)!;
        if i < 6 {
            showText(txt: array[i + 1])
        }
        transitionAudioandImage(letter: myButtonOne.currentTitle!)
    }
    
    @IBAction func playLetter(_ sender: Any) {
        playVowelAudio(letter: myButtonOne.currentTitle!)
    }
    @IBAction func playFirst(_ sender: Any) {
        playVowelFirstWord(letter: myButtonOne.currentTitle!)
    }
    @IBAction func playSecond(_ sender: Any) {
        playVowelSecondWord(letter: myButtonOne.currentTitle!)
    }
    @IBAction func playThird(_ sender: Any) {
        playVowelThirdWord(letter: myButtonOne.currentTitle!)
    }
    
    
    
    func transitionAudioandImage(letter: String) {
        switch letter {
        case "a","A":
            wordButton1.setImage(UIImage(named: "bat"), for: .normal)
            wordButton2.setImage(UIImage(named: "cat"), for: .normal)
            wordButton3.setImage(UIImage(named: "ax"), for: .normal)
            word1.text = "bat"
            word2.text = "cat"
            word3.text = "ax"
            playVowelAudio(letter: "a")
            // use dispatch queue to add delay between words. the delay have to increase each time by 1
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                self.playVowelFirstWord(letter: "a")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                self.playVowelSecondWord(letter: "a")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
                self.playVowelThirdWord(letter: "a")
            })
        case "a ","A ":
            playVowelAudio(letter: "a ")
            // use dispatch queue to add delay between words. the delay have to increase each time by 1
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                self.playVowelFirstWord(letter: "a ")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                self.playVowelSecondWord(letter: "a ")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
                self.playVowelThirdWord(letter: "a ")
            })
            wordButton1.setImage(UIImage(named: "ball"), for: .normal)
            wordButton2.setImage(UIImage(named: "fall"), for: .normal)
            wordButton3.setImage(UIImage(named: "swan"), for: .normal)
            word1.text = "ball"
            word2.text = "fall"
            word3.text = "swan"
        case "e","E":
            playVowelAudio(letter: "e")
            // use dispatch queue to add delay between words. the delay have to increase each time by 1
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                self.playVowelFirstWord(letter: "e")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                self.playVowelSecondWord(letter: "e")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
                self.playVowelThirdWord(letter: "e")
            })
            wordButton1.setImage(UIImage(named: "elf"), for: .normal)
            wordButton2.setImage(UIImage(named: "bed"), for: .normal)
            wordButton3.setImage(UIImage(named: "net"), for: .normal)
            word1.text = "elf"
            word2.text = "bed"
            word3.text = "net"
        case "i","I":
            playVowelAudio(letter: "i")
            // use dispatch queue to add delay between words. the delay have to increase each time by 1
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                self.playVowelFirstWord(letter: "i")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                self.playVowelSecondWord(letter: "i")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
                self.playVowelThirdWord(letter: "i")
            })
            wordButton1.setImage(UIImage(named: "mittens"), for: .normal)
            wordButton2.setImage(UIImage(named: "hit"), for: .normal)
            wordButton3.setImage(UIImage(named: "fish"), for: .normal)
            word1.text = "mittens"
            word2.text = "hit"
            word3.text = "fish"
        case "i ","I ":
            playVowelAudio(letter: "i ")
            // use dispatch queue to add delay between words. the delay have to increase each time by 1
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                self.playVowelFirstWord(letter: "i ")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                self.playVowelSecondWord(letter: "i ")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
                self.playVowelThirdWord(letter: "i ")
            })
            wordButton1.setImage(UIImage(named: "taxi"), for: .normal)
            wordButton2.setImage(UIImage(named: "yeti"), for: .normal)
            wordButton3.setImage(UIImage(named: "skis"), for: .normal)
            word1.text = "taxi"
            word2.text = "yeti"
            word3.text = "skis"
        case "o","O":
            playVowelAudio(letter: "o")
            // use dispatch queue to add delay between words. the delay have to increase each time by 1
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                self.playVowelFirstWord(letter: "o")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                self.playVowelSecondWord(letter: "o")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
                self.playVowelThirdWord(letter: "o")
            })
            wordButton1.setImage(UIImage(named: "fox"), for: .normal)
            wordButton2.setImage(UIImage(named: "pot"), for: .normal)
            wordButton3.setImage(UIImage(named: "hot"), for: .normal)
            word1.text = "fox"
            word2.text = "pot"
            word3.text = "hot"
        case "u","U":
            playVowelAudio(letter: "u")
            // use dispatch queue to add delay between words. the delay have to increase each time by 1
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                self.playVowelFirstWord(letter: "u")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                self.playVowelSecondWord(letter: "u")
            })
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
                self.playVowelThirdWord(letter: "u")
            })
            wordButton1.setImage(UIImage(named: "bug"), for: .normal)
            wordButton2.setImage(UIImage(named: "bus"), for: .normal)
            wordButton3.setImage(UIImage(named: "cut"), for: .normal)
            word1.text = "bug"
            word2.text = "bus"
            word3.text = "cut"
        default:
            break
        }
    }
    
    func playVowelAudio(letter: String) {
        switch letter {
        case "a","A":
            let pathToSound = Bundle.main.path(forResource: "phoneme-A-short", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "a ","A ":
            let pathToSound = Bundle.main.path(forResource: "phoneme-A-ahh", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "e","E":
            let pathToSound = Bundle.main.path(forResource: "phoneme-E-short", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "i","I":
            let pathToSound = Bundle.main.path(forResource: "phoneme-I-short", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "i ","I ":
            let pathToSound = Bundle.main.path(forResource: "phoneme-I-ee", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "o","O":
            let pathToSound = Bundle.main.path(forResource: "phoneme-O-short", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "u","U":
            let pathToSound = Bundle.main.path(forResource: "phoneme-U-short", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        default:
            break
        }
    }
    
    func playVowelFirstWord(letter: String) {
        switch letter {
        case "a","A":
            let pathToSound = Bundle.main.path(forResource: "bat", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "a ","A ":
            let pathToSound = Bundle.main.path(forResource: "ball", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "e","E":
            let pathToSound = Bundle.main.path(forResource: "elf", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "i","I":
            let pathToSound = Bundle.main.path(forResource: "mittens", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "i ","I ":
            let pathToSound = Bundle.main.path(forResource: "taxi", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "o","O":
            let pathToSound = Bundle.main.path(forResource: "fox", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "u","U":
            let pathToSound = Bundle.main.path(forResource: "bug", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        default:
            break
        }
    }
    
    func playVowelSecondWord(letter: String) {
        switch letter {
        case "a","A":
            let pathToSound = Bundle.main.path(forResource: "cat", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "a ","A ":
            let pathToSound = Bundle.main.path(forResource: "fall", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "e","E":
            let pathToSound = Bundle.main.path(forResource: "bed", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "i","I":
            let pathToSound = Bundle.main.path(forResource: "hit", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "i ","I ":
            let pathToSound = Bundle.main.path(forResource: "yeti", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "o","O":
            let pathToSound = Bundle.main.path(forResource: "pot", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "u","U":
            let pathToSound = Bundle.main.path(forResource: "bus", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        default:
            break
        }
    }
    
    func playVowelThirdWord(letter: String) {
        switch letter {
        case "a","A":
            let pathToSound = Bundle.main.path(forResource: "ax", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "a ","A ":
            let pathToSound = Bundle.main.path(forResource: "swan", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "e","E":
            let pathToSound = Bundle.main.path(forResource: "net", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "i","I":
            let pathToSound = Bundle.main.path(forResource: "fish", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "i ","I ":
            let pathToSound = Bundle.main.path(forResource: "skis", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "o","O":
            let pathToSound = Bundle.main.path(forResource: "hot", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        case "u","U":
            let pathToSound = Bundle.main.path(forResource: "cut", ofType: "mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {}
        default:
            break
        }
    }
    
    @IBAction func `return`(_ sender: Any) {
        self.dismiss(animated:true, completion: nil)
    }

    @IBAction func home(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    @IBAction func quiz(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "vowel_quiz_vc") as! VowelQuizViewController
        vc.passedInLetter = myButtonOne.currentTitle!
        vc.passedInArray = array
        present(vc, animated: true)
    }
    
    @IBAction func coin(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "coin_vc") as! CoinViewController
        present(vc, animated: true)
    }
    @IBAction func puzzle(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "puzzle_vc") as! PuzzleViewController
        present(vc, animated: true)
    }
}
