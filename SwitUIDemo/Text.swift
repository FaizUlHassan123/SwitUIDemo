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
            DataListCellView()
                .navigationTitle("Navigation")
            
        }
        .foregroundColor(Color.green)
    }
}

struct DataListCellView:View{
    
    @State private var slected_tab = 0
    
    var body: some View{
        
        VStack{
            Picker(selection: $slected_tab) {
                
                Text("List").tag(0)
                Text("ScrollView").tag(1)
                
            } label: {
                Text("")
            }.pickerStyle(.segmented)
            ListType(selected: $slected_tab)
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListType:View{
    
    @Binding var selected:Int
    
    @State private var list : [DataList] = [
        DataList(_title: .CollectionView),
        DataList(_title:.TableView),
        DataList(_title:.JSonParsing),
        DataList(_title:.Tabbed_View),
        DataList(_title:.SearchBarView),
        DataList(_title: .ContextMenuView),
        DataList(_title: .ImagePicker),
        DataList(_title: .VideoPlayer),
        DataList(_title: .Notification),
        DataList(_title: .CustomTabbar),
        DataList(_title: .StoryBoard),
        DataList(_title: .SwiftUIImageDownloading)]
    
    var body: some View{
        
        GeometryReader { geo in
            
            if selected == 0{
                
                //Edit button works only when Foreach is embbed in List and onMove also works only List
                List{
                    
                    ForEach (list, id: \.id){ d in
                        
                        HStack{
                            NavigationLink(destination: gotoSpecificView(_title: d._title)) {
                                Text(d._title.rawValue)
                                    .fontWeight(.bold)
                                    .font(.system(size: 17))
                                    .padding(8)
                                    .lineLimit(2)
                                Spacer()
                            }
                        }
                    }
                    .onDelete { index in
                        self.list.remove(atOffsets: index)
                    }
                    .onMove { index, destination in
                        self.list.move(fromOffsets: index, toOffset: destination)
                    }
                }
                .frame(width: geo.size.width)
                .navigationBarItems(trailing: EditButton())
                
            }else{
                
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
                        .onDelete { index in
                            self.list.remove(atOffsets: index)
                        }
                        .onMove { index, destination in
                            self.list.move(fromOffsets: index, toOffset: destination)
                        }
                        
                    }
                    .frame(width: geo.size.width)
                }
            }
        }
        
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
            case .ContextMenuView:
                SwiftUIContextMenuView(_title: _title.rawValue)
            case .ImagePicker:
                SwiftUIImagePickerView(_title: _title.rawValue)
            case .VideoPlayer:
                SwiftUIVidePlayerView(_title: _title.rawValue)
            case .Notification:
                SwiftUINotificationView(_title: _title.rawValue)
            case .CustomTabbar:
                SwiftUICustomTabbarView(_title: _title.rawValue)
            case .StoryBoard:
                SwiftUIStoryBoardView(_title: _title.rawValue)
            case .SwiftUIImageDownloading:
                SwiftUIImageDownloading(_title: _title.rawValue)
        }
        
    }
}


enum DatType:String{
    case CollectionView
    case TableView
    case JSonParsing
    case Tabbed_View = "Tabbed View"
    case SearchBarView = "SearchBar"
    case ContextMenuView = "ContextMenu"
    case ImagePicker
    case VideoPlayer
    case Notification
    case CustomTabbar = "Custom Tab bar"
    case StoryBoard
    case SwiftUIImageDownloading = "UIImageDownloading"
}
