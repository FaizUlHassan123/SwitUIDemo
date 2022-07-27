//
//  SwiftUITopBarView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 26/07/2022.
//

import SwiftUI

struct SwiftUITopBarView: View {
    
    
    @State var slected_tab = 0
    var body: some View {
        
        VStack{
            Picker(selection: $slected_tab) {
                Image(systemName: "house.fill").tag(0)
                Image(systemName: "flame.fill").tag(1)
                Image(systemName: "paperplane.fill").tag(2)
                
            } label: {
                Text("")
            }.pickerStyle(.segmented)
//            Spacer()
            if slected_tab == 0{
                SwiftUIHomeTabView()
            }else if slected_tab == 1{
                SwiftUICollectionView(_title: "")
            }else{
                SwiftUIShareTabView()
            }
        }
        
    }
}

struct SwiftUITopBarView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITopBarView()
    }
}


