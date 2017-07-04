//
//  ViewController.swift
//  YoutubeSample
//
//  Created by Apple on 7/4/2560 BE.
//  Copyright © 2560 devbizo. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class ViewController: UIViewController,YTPlayerViewDelegate {
    
    @IBOutlet weak var playerView:YTPlayerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.playerView.delegate = self;
        self.playerView.load(withPlaylistId: "RDs1bMnKLStEA")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playerView(_ playerView: YTPlayerView, didChangeTo state: YTPlayerState) {
        switch (state) {
        case .playing:
            NSLog("Started playback");
            break;
        case .paused:
            NSLog("Paused playback");
            break;
        case .buffering:
            NSLog("Buffering playback");
            break;
        case .queued:
            NSLog("Queued playback");
            break;
        case .ended:
            NSLog("Ended playback");
            break;
        default:
            break;
        }
    }


}

