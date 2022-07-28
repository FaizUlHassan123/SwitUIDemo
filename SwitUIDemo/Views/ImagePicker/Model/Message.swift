//
//  Message.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 28/07/2022.
//

import Foundation
import UIKit

struct Message:Identifiable , Equatable{
    var id = Date()
    var mesage :String
    var mymessage:Bool
    var profileimage:String
    var photo: Data?
}


class Messages : ObservableObject{
    
    @Published var message:[Message] = []
    
    func writeMesage(id:Date, msg:String , mymsg:Bool , profilepic:String, photo:Data?){
        let msg = Message(id: id, mesage: msg, mymessage: mymsg, profileimage: profilepic, photo: photo)
        message.append(msg)
        
    }
}
