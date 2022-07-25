//
//  ContentView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 22/07/2022.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        //        NavigationView {
        //            VStack {
        //                NavigationLink(destination: SwiftUICollectionView()) {
        //                    Text("Show Detail View")
        //                }
        //                DataList()
        //                .navigationTitle("Navigation")
        //            }
        //        }
        
        NavigationView{
            DataList()
                .navigationTitle("Navigation")
        }
        //        .navigationTitle("Navigation")
        .foregroundColor(Color.green)
    }
}

struct Data  {
    let id = UUID()
    let _title: String
}

struct DataList:View{
    
    private var list : [Data] = [
        Data(_title: "CollectionView")
        ,Data(_title:"TableView"),
        Data(_title:"JSonParsing"),
        Data(_title:"JSonParsing"),
        Data(_title:"JSonParsing"),]
    
    var body: some View{
        
        GeometryReader { geo in
            
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading){
                    ForEach (list, id: \.id){ d in
                        
                        HStack{
                            NavigationLink(destination: gotoSpecificView(_title: d._title)) {
                                Text(d._title)
                                    .fontWeight(.bold)
                                    .padding(10)
                                Spacer()
                            }
                            
                        }
                        
                    }
                    
                }
                .frame(width: geo.size.width)
                
            }
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct gotoSpecificView: View {
    var _title:String
    
    var body: some View{
        if _title == "CollectionView"{
            SwiftUICollectionView(_title: _title)
        }else if _title == "TableView"{
            
        }else if _title == "JSonParsing"{
            SwiftUIJSonView(_title: _title)
        }
    }
}
