//
//  SwiftUIBottomTabView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 25/07/2022.
//

import SwiftUI

struct SwiftUIBottomTabView: View {
    
    var _title:String
    
    var body: some View {
        
        TabView{
            
            SwiftUIHomeTabView().tabItem {
                VStack{
                    Image(systemName: "house.fill")
                    Text("House")
                        .fontWeight(.light)
                }
            }
            
            SwiftUINewsTabView().tabItem {
                VStack{
                    Image(systemName: "flame.fill")
                    Text("News")
                        .fontWeight(.light)
                }
                
            }
            
            SwiftUIShareTabView().tabItem {
                VStack{
                    Image(systemName: "paperplane.fill")
                    Text("Share")
                        .fontWeight(.light)
                }
                
            }
        }
        .navigationTitle(_title)
    }
}

struct SwiftUIBottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIBottomTabView(_title: "SwiftUIBottomTabView")
    }
}
