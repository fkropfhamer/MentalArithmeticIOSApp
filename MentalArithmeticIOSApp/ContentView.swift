//
//  ContentView.swift
//  MentalArithmeticIOSApp
//
//  Created by Fabian Kropfhamer on 05.09.20.
//  Copyright © 2020 Fabian Kropfhamer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model: ContentViewModel = ContentViewModel();
    @State var input: String = ""
    
    var body: some View {
        VStack {
            Text("Score: \(self.model.score)")
            Text("Task: \(self.model.task)")
            HStack {
                VStack {
                    TextField("Result", text: self.$input).keyboardType(.numberPad)
                }
                Button(action: {self.model.submit(input: self.input)}) {
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
