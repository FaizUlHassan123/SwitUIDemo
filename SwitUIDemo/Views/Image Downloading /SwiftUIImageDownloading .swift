//
//  SwiftUIImageDownloading .swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 01/08/2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct SwiftUIImageDownloading: View {
    
    var _title:String

    @State var url = "https://www.gstatic.com/webp/gallery/1.jpg"
    
    var body: some View {
       AnimatedImage(url: URL(string: url))
            .frame(width: 180, height: 180, alignment: .center)
//            .clipShape(Circle())
//            .clipShape(Capsule())
            .onTapGesture {
                url = "https://www.gstatic.com/webp/gallery/2.jpg"
            }
    }
}

struct SwiftUIImageDownloading_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImageDownloading(_title: "SwiftUIImageDownloading")
    }
}
