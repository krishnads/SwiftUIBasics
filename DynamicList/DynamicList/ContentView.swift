//
//  ContentView.swift
//  DynamicList
//
//  Created by Apple on 17/10/19.
//  Copyright © 2019 Konstant info Solutions Pvt. Ltd. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    let id: UUID = UUID()
    let uName: String
    let uMobile: String
}

struct ContentView: View {
    
    let users = [
        User(uName: "Krishna", uMobile: "654654654"),
        User(uName: "Jyoti", uMobile: "5345454354"),
        User(uName: "Pankaj", uMobile: "6876586755"),
        User(uName: "Dev", uMobile: "7687568657"),
        User(uName: "Anil", uMobile: "6756756765"),
    ]
    
    
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 20)!, .foregroundColor: UIColor.red]
        UINavigationBar.appearance().backgroundColor = .green
    }
    
    
    var body: some View {
        NavigationView {
            List(users) { userModel in
                VStack (alignment: .leading){
                    Text(userModel.uName)
                    Text(userModel.uMobile)
                }
                .padding(.horizontal, 20)
            }
            .navigationBarTitle(Text("Dynamic LIST ITEMS").foregroundColor(.red), displayMode: .large)
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
