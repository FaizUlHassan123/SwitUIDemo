//
//  SwiftUICustomTabbarView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 01/08/2022.
//

import SwiftUI

struct SwiftUICustomTabbarView: View {
    
    var  _title = ""
    
    @State var selected = 0
    
    var body: some View {
        VStack{
            
            Spacer()
            
            ZStack(alignment: .top) {
                BottomBar(selected: $selected)
                    .padding()
                    .padding(.horizontal,12)
                    .background(CurvedShape())
                
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .padding(10)
                        .frame(width: 50, height: 50, alignment: .center)
                        .background(Color.yellow)
                        .clipShape(Circle())
                        .offset(y:-30)
                        .font(.system(size: 20, weight: .bold, design: Font.Design.rounded))
                }
                
            }
        }
        .background(Color.gray.opacity(0.6))
        .navigationTitle(_title)
        .edgesIgnoringSafeArea(.top)
    }
    
}

struct SwiftUICustomTabbarView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUICustomTabbarView(_title: "")
    }
}

struct CurvedShape : View{
    
    var body: some View{
        Path{path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
            path.addLine(to: CGPoint(x: 0, y: 55))
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 55), radius: 32, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            path.addLine(to: CGPoint(x: 0, y: 55))
        }
        .fill(Color.white)
        .rotationEffect(.degrees(180))
    }
}


struct BottomBar :View{
    
    @Binding var selected:Int
    
    var body: some View{
        HStack{
            
            Button {
                self.selected = 0
            } label: {
                Image(systemName: "house")
            }
            .foregroundColor(self.selected == 0 ? Color.black : Color.gray)
            
            Spacer(minLength: 12)
            
            Button {
                withAnimation {
                    self.selected = 1
                }
            } label: {
                Image("search")
            }
            .foregroundColor(self.selected == 1 ? Color.black : Color.gray)
            
            
            Spacer()
                .frame(width: 120)
            //
            Button {
                self.selected = 2
            } label: {
                Image(systemName: "person")
            }
            .foregroundColor(self.selected == 2 ? Color.black : Color.gray)
//            .offset(x: -10)
            
            Spacer(minLength: 12)
            Button {
                self.selected = 3
            } label: {
                Image(systemName: "person")
            }
            .foregroundColor(self.selected == 3 ? Color.black : Color.gray)
            
        }
    }
}
