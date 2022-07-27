//
//  SwiftUISearchBarView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 26/07/2022.
//

import SwiftUI

struct SwiftUISearchBarView: View {
    
    var body: some View {
        SearhView()
            .navigationBarHidden(true)
    }
}

struct SwiftUISearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISearchBarView()
    }
}

struct SearhView: View{
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var show = false
    @State var txt : String = ""
    @State var data = SearchDummuyData.dData
    
    var body : some View{
        
        VStack(spacing:0){
            
            HStack{
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                }
                
                HStack{
                    Text("Food")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                    
                    
                    Spacer(minLength: 12)
                    
                    HStack{
                        
                        if self.show{
                            
                            Image("search").padding(.horizontal, 8)
                            
                            TextField("Search Food", text: self.$txt)
                            
                            Button(action: {
                                
                                withAnimation {
                                    
                                    self.txt = ""
                                    self.show.toggle()
                                }
                                
                            }) {
                                
                                Image(systemName: "xmark")
                                    .foregroundColor(.black)
                            }
                            .padding(.horizontal, 8)
                            
                        }
                        
                        else{
                            
                            Button(action: {
                                
                                withAnimation {
                                    self.show.toggle()
                                }
                                
                            }) {
                                
                                Image("search")
                                    .foregroundColor(.black).padding(10)
                                
                            }
                        }
                    }
                    .padding(self.show ? 10 : 0)
                    .background(Color.white)
                    .cornerRadius(20)
                    
                }
                .padding(.top,42)
                
                
            }
            .padding(.horizontal)
            .padding(.bottom, 10)
            .background(Color.orange)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0){
                    
                    if self.txt != ""{
                        if data.filter({$0.img_name.lowercased().contains(self.txt.lowercased())}).count == 0{
                            Text("No Result found")
                                .padding(.top,10)
                        }else{
                            ForEach(data.filter({$0.img_name.lowercased().contains(self.txt.lowercased())}),id: \.self){i in
                                cellView(image: i.img_name)
                            }
                        }
                        
                    }else{
                        
                        ForEach(data,id: \.self){ i in
                            cellView(image: i.img_name)
                        }
                    }
                    
                }
                
            }
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct cellView : View {
    
    var image : String
    
    var body : some View{
        
        ZStack(alignment: .bottomTrailing) {
            
            Image(image)
                .resizable()
                .frame(height: 200)
                .cornerRadius(20)
            
            Button(action: {
                
            }) {
                
                Image(systemName: "arrow.right").foregroundColor(.black).padding()
            }
            .background(Color.white)
            .clipShape(Circle())
            
        }
        .padding(6)
    }
}

