//
//  ViewController.swift
//  t
//
//  Created by 簡吟真 on 2021/3/17.
//storyboard裡UI的class名稱要與下方程式碼名稱相符，並將UI拉到相對應的程式碼

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //音調及速度的Label顯示到小數點第二位（ "%.2f" ）為設定之數值
    @IBAction func changeSlider(_ sender: Any) {
        speedRateText.text = String(format: "%.2f", speedRate.value)
        voiceTypeText.text = String(format: "%.2f", voiceType.value)
    }
    
    //outlet專區
    @IBOutlet weak var speedRateText: UILabel! //速度數字文字Label
    @IBOutlet weak var voiceType: UISlider! //音調滑軌
    @IBOutlet weak var voiceTypeText: UILabel! //音調數字文字Label
    @IBOutlet weak var speedRate: UISlider! //速度滑軌
    @IBOutlet weak var loveTextField: UITextField! //文字輸入框
    
    //讀取TextField內容、播放、新增語言(中文)、音調與速度功能
    @IBAction func buttunPressed(_ sender: Any) {    //老虎頭播放鍵連接至這裡
        
        let speechUtterance = AVSpeechUtterance(string: loveTextField.text!)
        let synthesizer = AVSpeechSynthesizer()
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        speechUtterance.pitchMultiplier = voiceType.value
        speechUtterance.rate = speedRate.value
        synthesizer.speak(speechUtterance)


    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


