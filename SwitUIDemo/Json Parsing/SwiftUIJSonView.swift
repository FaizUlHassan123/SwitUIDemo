//
//  SwiftUIJSonView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 25/07/2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct SwiftUIJSonView: View {
    
    @ObservedObject var getData = datas()
    var _title:String
    
    var body: some View {
            
            List(getData.jsonDat){ i in
                listRow(url: i.avatar_url, name: i.login)
            }
            .navigationTitle(_title)
    }
}

struct SwiftUIJSonView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIJSonView( _title: "")
    }
}

class datas : ObservableObject {
    
    @Published var jsonDat:[datatype] = []
    
    init(){
        let url  = URL(string: "https://api.github.com/users/hadley/orgs")!
        let session = URLSession.init(configuration: .default)
        session.dataTask(with: url)
        { data, _, _ in
            print("Response ")
            do {
                let da = try JSONDecoder().decode([datatype].self, from: data!)
                DispatchQueue.main.async {
                    self.jsonDat = da
                }
                
            }catch(let error){
                print("Error \(error.localizedDescription)")
            }
        }.resume()
    }
}


struct listRow :View {
    
    var url:String = ""
    var name:String = "Test"
    
    var body: some View {
        HStack{
            AnimatedImage(url: URL(string: url))
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .shadow(radius: 20)
//            AnimatedImage(url: URL(string: url))
//                    // Supports options and context, like `.progressiveLoad` for progressive animation loading
//                    .onFailure { error in
//                        // Error
//                        print("Error \(error.localizedDescription)")
//                    }
//                    .resizable() // Resizable like SwiftUI.Image, you must use this modifier or the view will use the image bitmap size
//                    .placeholder(UIImage(systemName: "img1")) // Placeholder Image
//                    // Supports ViewBuilder as well
//                    .placeholder {
//                        Circle().foregroundColor(.gray)
//                    }
//                    .indicator(SDWebImageActivityIndicator.medium) // Activity Indicator
//                    .transition(.fade) // Fade Transition
//                    .scaledToFit() // Attention to call it on AnimatedImage, but not `some View` after View Modifier (Swift Protocol Extension method is static dispatched)
//                    .frame(width: 60, height: 60)
                    
            Text(name)
                .fontWeight(.heavy)
                .padding(.leading, 10)
        }
    }
}
