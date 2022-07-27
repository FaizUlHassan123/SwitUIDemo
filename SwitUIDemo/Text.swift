//
//  ContentView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 22/07/2022.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        NavigationView{
            DataList()
                .navigationTitle("Navigation")
            
        }
        .foregroundColor(Color.green)
    }
}

struct Data  {
    let id = UUID()
    let _title: DatType
}

struct DataList:View{
    
    private var list : [Data] = [
        Data(_title: .CollectionView),Data(_title:.TableView),
        Data(_title:.JSonParsing),
        Data(_title:.Tabbed_View),
        Data(_title:.SearchBarView)]
    
    var body: some View{
        
        GeometryReader { geo in
            
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .leading){
                    ForEach (list, id: \.id){ d in
                        
                        HStack{
                            NavigationLink(destination: gotoSpecificView(_title: d._title)) {
                                Text(d._title.rawValue)
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
    
    var _title:DatType
    
    var body: some View{
        
        switch _title {
            case .CollectionView:
                SwiftUICollectionView(_title: _title.rawValue);
            case .TableView:
                EmptyView();
            case .JSonParsing:
                SwiftUIJSonView(_title: _title.rawValue)
            case .Tabbed_View:
                SwiftUIBottomTabView(_title: _title.rawValue)
            case .SearchBarView:
                SwiftUISearchBarView()
        }

    }
}

enum DatType:String{
    case CollectionView
    case TableView
    case JSonParsing
    case Tabbed_View = "Tabbed View"
    case SearchBarView = "SearchBarView"
}
