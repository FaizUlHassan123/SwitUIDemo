//
//  SwiftUIVidePlayerView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 01/08/2022.
//

import SwiftUI
import Foundation
import AVFoundation
import UIKit
import AVKit

struct SwiftUIVidePlayerView: View {
    
    var  _title = ""
    @State var player = AVPlayer()
    var videoUrl: String = "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4"
    
    
    var body: some View {
        VStack{
            Playe()
                .frame(height: UIScreen.main.bounds.height / 2.3)
//            Spacer()
            VideoPlayer(player: player)
                .onAppear() {
                    player = AVPlayer(url: URL(string: videoUrl)!)
                    player.play()
                }
//            Spacer()
            VideoPlayer(player: AVPlayer(url:  URL(string: videoUrl)!)) {
                VStack {
                    Text("Watermark")
                        .foregroundColor(.white)
                    Spacer()
                }
                .frame(width: 400, height: 300)
            }
        }
        .navigationTitle(_title)
    }
}

struct SwiftUIVidePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVidePlayerView()
    }
}



struct Playe: UIViewControllerRepresentable{
    
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        
    }
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        let url = "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"
        let player1 = AVPlayer(url: URL(string: url)!)
        //        player1.play/
        controller.player = player1
        return controller
    }
    
    
    
}
