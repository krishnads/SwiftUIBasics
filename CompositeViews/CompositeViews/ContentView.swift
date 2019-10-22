//
//  ContentView.swift
//  CompositeViews
//
//  Created by Apple on 22/10/19.
//  Copyright © 2019 Konstant info Solutions Pvt. Ltd. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            MapView().frame(height: 300)
                .padding()
            Image("logo")
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.red, lineWidth: 5)
                )
                .shadow(radius: 10)
                .offset(y: -120)
                .padding( .bottom, -120)
            
            HStack () {
                VStack (alignment: .leading) {
                    Text("Title")
                    Text("Description")
                }
                Spacer()
                Text("distance: 10km")
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
