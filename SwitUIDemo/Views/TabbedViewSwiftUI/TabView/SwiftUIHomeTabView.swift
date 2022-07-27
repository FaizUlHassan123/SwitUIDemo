//
//  SwiftUIHomeTabView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 26/07/2022.
//

import SwiftUI

struct SwiftUIHomeTabView: View {
    
    var body: some View {
        
        GeometryReader { geo in
            
            ScrollView(.vertical, showsIndicators: true) {
                VStack{
                    
                    ForEach(HomeDummuyData.home_Data, id: \.id){ d in
                        HStack{
                            MyjobsCellView(data: d)
                            Spacer()
                        }
                    }
                    .padding(.horizontal,12)
                    .frame(width: geo.size.width)
                    
                }
            }
        }
        
    }
    
}

struct SwiftUIHomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIHomeTabView()
    }
}


//MARK: - MyjobsCellView

struct MyjobsCellView:View{
    
    var data :home
    
    var body: some View{
        
        VStack(alignment: .leading,spacing: 6)  {
            Text(data.jobTitle)
                .foregroundColor(Color("primaryColor"))
                .font(Font.custom("Raleway Bold", size: 16))
            
            Text(data.industryCategory)
                .font(Font.custom("Raleway-Bold", size: 14))
            
            Text(data.numberOfEmployees)
                .font(Font.custom("Raleway-Italic", size: 14))
            
            Text(data.salaryRange)
            
            if let jobDescription = data.jobDescription{
                Text(jobDescription)
            }
            
            Text(data.timeAgo)
                .foregroundColor(Color.gray.opacity(0.9))
            
        }
        .padding(12)
        .shadow(color: Color.gray.opacity(0.3), radius: 12, x: 0, y: 0)
                
    }
    
}
