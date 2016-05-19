import Foundation
import AVFoundation
import UIKit

let synthesizer = AVSpeechSynthesizer()

public func wait(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}

public func speak(text:String){
    let utterance = AVSpeechUtterance(string: text)
    utterance.pitchMultiplier = 1.0
    utterance.rate = 0.5
    synthesizer.speakUtterance(utterance)
}

public func randomNumberBetween(start start:Int,end:Int)->Int{
    let num = Int(arc4random_uniform(UInt32(end)))
    return num
}

