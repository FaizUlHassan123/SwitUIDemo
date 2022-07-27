//
//  SwiftUIView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 25/07/2022.
//

import SwiftUI


class datatype : Identifiable , Codable{
    
    var id:Int
    var login: String
    var node_id:String
    var url:String
    var repos_url:String
    var events_url:String
    var hooks_url:String
    var issues_url:String
    var members_url:String
    var public_members_url:String
    var avatar_url:String
    var description:String?
    
}
