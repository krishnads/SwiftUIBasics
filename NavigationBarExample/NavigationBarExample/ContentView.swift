//
//  ContentView.swift
//  NavigationBarExample
//
//  Created by Apple on 17/10/19.
//  Copyright © 2019 Konstant info Solutions Pvt. Ltd. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 20)!, .foregroundColor: UIColor.red]
        UINavigationBar.appearance().backgroundColor = .green
    }
    
    
    var body: some View {
        NavigationView {
            List() {
               Text("Row 1")
               Text("Row 2")
               Text("Row 3")
               Text("Row 4")
               Text("Row 5")
            }
            .navigationBarTitle(Text("LIST ITEMS").foregroundColor(.red), displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                
            }, label: {
                Text("Back")
            }), trailing: Button(action: {
                
            }, label: {
                Text("Cancel")
            }))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
