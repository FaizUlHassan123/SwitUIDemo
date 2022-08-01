//
//  SwiftUICustomButtonView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 01/08/2022.
//

import SwiftUI

struct SwiftUICustomButtonView: View {
    var  _title = ""

    @State private var badge: Int = 0
    var body: some View {
        
        VStack{
            ZStack{
                Button {
                    print("Clicked")
                    self.badge += 1
                } label: {
                    Image(systemName: "bell.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                }
                .padding()
                .background(Color.gray)
                .foregroundColor(Color.black)
                .clipShape(Circle())
                
                Text("\(badge)")
                    .padding(8)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .clipShape(Circle())
                    .offset(x:10 ,y:-25)
            }
        }
        .navigationTitle(_title)

       
    }
}

struct SwiftUICustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUICustomButtonView()
    }
}
