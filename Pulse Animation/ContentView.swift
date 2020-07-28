//
//  ContentView.swift
//  Pulse Animation
//
//  Created by Admin on 1/21/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       Loading()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Loading: View {
   
    @State var animate = false
   
    var body: some View {
       
        ZStack {
            Circle().fill(Color.red.opacity(0.25)).frame(width: 350, height: 350).scaleEffect(self.animate ? 1 : 0)
            Circle().fill(Color.red.opacity(0.35)).frame(width: 250, height: 250).scaleEffect(self.animate ? 1 : 0)
            Circle().fill(Color.red.opacity(0.45)).frame(width: 150, height: 150).scaleEffect(self.animate ? 1 : 0)
            Circle().fill(Color.red).frame(width: 30, height: 30)
        }.onAppear { // .onAppear like viewDidiLoad in UIKit
            self.animate.toggle()
        }
        .animation(Animation.linear(duration: 1.5).repeatForever(autoreverses: true))
    }
}
