//
//  SwiftUIBubbleCellView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 28/07/2022.
//

import SwiftUI


struct SwiftUIBubbleCellView: View{
    var msg:Message
    var body: some View{
        
        //Automatic Scroll to Bottom
        //First Assignment id to Each row
        
        HStack(alignment: .top,spacing:10){
            if msg.mymessage{
                
                //Pushing message to left
                Spacer(minLength: 25)
                if msg.photo == nil{
                    Text(msg.mesage)
                        .padding(.all)
                        .background(Color.black.opacity(0.06))
                        .clipShape(BubbleShape(myMessage: msg.mymessage))
                }else{
                    Image(uiImage: UIImage(data: msg.photo!)!)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width - 150, height: 150)
                        .clipShape(BubbleShape(myMessage: msg.mymessage))
                }
                
                
                
                Image(msg.profileimage)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
            }else{
                
                //Pushing message to Right
                
                Image(msg.profileimage)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                
                if msg.photo == nil{
                    Text(msg.mesage)
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .background(Color.green)
                        .clipShape(BubbleShape(myMessage: msg.mymessage))
                }else{
                    Image(uiImage: UIImage(data: msg.photo!)!)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width - 150, height: 150)
                        .clipShape(BubbleShape(myMessage: msg.mymessage))
                }
                
                Spacer(minLength: 25)
                
            }
        }
        .id(msg.id)
        
    }
}


struct SwiftUIBubbleCellView_Previews: PreviewProvider {
    static var previews: some View {
        let msg = Message(id: Date(), mesage: "message", mymessage: true, profileimage: "p1", photo: nil)
        SwiftUIBubbleCellView(msg: msg)
    }
}

//Round Bubble Corners
struct BubbleShape :Shape{
    
    var myMessage:Bool
    
    func path(in rect: CGRect) -> Path {
        let corners:UIRectCorner = myMessage ? [.topLeft,.bottomLeft,.bottomRight] : [.topRight,.bottomRight,.bottomLeft]
        let path = UIBezierPath(roundedRect: rect,byRoundingCorners: corners,cornerRadii: CGSize(width: 10, height: 10))
        
        return Path(path.cgPath)
    }
}
