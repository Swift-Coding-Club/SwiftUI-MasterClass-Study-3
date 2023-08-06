//
//  AudioPlayer.swift
//  RESTART
//
//  Created by 윤경환 on 2023/08/06.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("실행할 사운드 파일이 없습니다.")
        }
    }
}
