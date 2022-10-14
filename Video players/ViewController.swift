//
//  ViewController.swift
//  Video players
//
//  Created by Кунгурцев Эдуард Сергеевич on 14.10.2022.
//

import UIKit
import youtube_ios_player_helper
import AVKit
// youtube_ios_player_helper библиотека, а AVKit эпла библиотека

class ViewController: UIViewController, YTPlayerViewDelegate {
	
	let videoURLString = "https://www.youtube.com/pYymRbfjKv8"

	let videoCode = "pYymRbfjKv8"

	@IBOutlet weak var centralView: YTPlayerView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	@IBAction func playButtonPressed(_ sender: Any) {
		//  Этот способ открывает видео с Ютуба локально
//		guard let videoURL = URL(string: videoURLString) else { return }
		
		guard let videoURL = Bundle.main.url(forResource: "myVideo", withExtension: "mp4") else {
			print("1212")
			return }
		
		let player = AVPlayer(url: videoURL)
		let playerVC = AVPlayerViewController()
		playerVC.player = player
		present(playerVC, animated: true) {
			player.play()
		}
	}
	
	@IBAction func youtubeButtonPressed(_ sender: Any) {
		centralView.load(withVideoId: "nkncpcanly0")
	}
	
}

