//
//  SwiftUIStoryBoardView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 01/08/2022.
//

import SwiftUI

struct SwiftUIStoryBoardView: View {
    
    var _title:String

    var body: some View {
        CustomController()
            .navigationTitle(_title)
    }
}

struct SwiftUIStoryBoardView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIStoryBoardView(_title: "StoryBoard")
    }
}


struct CustomController : UIViewControllerRepresentable{
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "HomeNav")
        return controller
    }
}
