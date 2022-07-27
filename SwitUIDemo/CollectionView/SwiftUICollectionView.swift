//
//  SwiftUICollectionView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 25/07/2022.
//

import SwiftUI

struct SwiftUICollectionView: View {
    
    var _title:String
    
    var body: some View {
        grid()
            .navigationTitle(_title)
    }
}

private var images:[UIImage] = [#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img4"),#imageLiteral(resourceName: "img5"),#imageLiteral(resourceName: "img6"),#imageLiteral(resourceName: "img7"),#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img4"),#imageLiteral(resourceName: "img5"),#imageLiteral(resourceName: "img6"),#imageLiteral(resourceName: "img7"),#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img4"),#imageLiteral(resourceName: "img5"),#imageLiteral(resourceName: "img6"),#imageLiteral(resourceName: "img7"),#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img4"),#imageLiteral(resourceName: "img5"),#imageLiteral(resourceName: "img6"),#imageLiteral(resourceName: "img7")]

struct grid : View{
    var body : some View{
        
        GeometryReader { geo in
            
            ScrollView(.vertical, showsIndicators: true) {
                VStack{
                    ForEach (0..<images.count){i in
                        
                        HStack{
                            
                            Image(uiImage: images[i])
                                .resizable()
                                .frame(width: geo.size.width / 2 - 16)
                            Image(uiImage: images[i])
                                .resizable()
                                .frame(width: geo.size.width / 2 - 16)
                                
                        }
                        .padding(.horizontal,12)
                        .frame(height: UIDevice.current.orientation.isLandscape ? 300 : 150)
                    }
                    
                }
                
            }
        }
        
    }
}

struct SwiftUICollectionView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUICollectionView(_title: "SwiftUICollectionView")
    }
}
