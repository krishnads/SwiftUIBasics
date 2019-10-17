//
//  ContentView.swift
//  BasicList
//
//  Created by Apple on 17/10/19.
//  Copyright © 2019 Konstant info Solutions Pvt. Ltd. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        List() {
            Text("Row 1")
            Text("Row 2")
            Text("Row 3")
            Text("Row 4")
            Text("Row 5")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
