//
//  LazyView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 02/08/2022.
//

import Foundation
import SwiftUI


struct LazyView <T: View> : View{
     
    var view : () -> T
    var body: some View {
        self.view()
    }
}
