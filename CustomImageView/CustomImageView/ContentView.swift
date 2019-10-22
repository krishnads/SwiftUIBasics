//
//  ContentView.swift
//  CustomImageView
//
//  Created by Apple on 22/10/19.
//  Copyright © 2019 Konstant info Solutions Pvt. Ltd. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image("logo")
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                )
                .shadow(radius: 10)
            Image("logo").clipShape(Capsule(style: .continuous))
            Image("logo").clipShape(RoundedRectangle(cornerRadius: 20))            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
