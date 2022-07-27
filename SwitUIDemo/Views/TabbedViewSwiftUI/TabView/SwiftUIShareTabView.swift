//
//  SwiftUIShareTabView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 26/07/2022.
//

import SwiftUI

struct SwiftUIShareTabView: View {
    
    let allFontNames = UIFont.familyNames
      .flatMap { UIFont.fontNames(forFamilyName: $0) }
    
    
    
    var body: some View {
        List(allFontNames, id: \.self) { name in
            Text(name)
              .font(Font.custom(name, size: 12))
          }
    }
}

struct SwiftUIShareTabView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIShareTabView()
    }
}
