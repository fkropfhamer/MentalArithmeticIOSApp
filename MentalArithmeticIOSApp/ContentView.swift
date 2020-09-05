//
//  ContentView.swift
//  MentalArithmeticIOSApp
//
//  Created by Fabian Kropfhamer on 05.09.20.
//  Copyright © 2020 Fabian Kropfhamer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var score: Int = 0;
    
    var body: some View {
        VStack {
            Text("Score: \(self.score)")
            Text("Task")
            HStack {
                VStack {
                    TextField("Result", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/).keyboardType(.numberPad)
                }
                Button(action: {self.score += 1}) {
                    Text("Submit")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
