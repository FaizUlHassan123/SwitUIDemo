//
//  SwiftUIContextMenuView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 27/07/2022.
//

import SwiftUI

struct SwiftUIContextMenuView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var _title:String
    var body: some View {
        
        VStack{
            
            Image("p1")
                .resizable()
                .frame(height: 300)
                .padding()
                .contextMenu(menuItems: {
                    Button {
                        print("Save")
                    } label: {
                        
                        HStack{
                            Image(systemName: "folder.fill")
                            Text("Save to Gallery")
                        }
                    }
                    Button {
                        print("Share")
                    } label: {
                        
                        HStack{
                            Image(systemName: "square.and.arrow.up")
                            Text("Share")
                        }
                    }
                    
                    Button {
                        print("Send")
                    } label: {
                        
                        HStack{
                            Image(systemName: "paperplane.fill")
                            Text("Send")
                        }
                    }
                    
                })
            Spacer()
        }
        
        .navigationTitle(_title)
    }
}

struct SwiftUIContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIContextMenuView(_title: "")
    }
}
