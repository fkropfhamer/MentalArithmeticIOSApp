//
//  ContentViewModel.swift
//  MentalArithmeticIOSApp
//
//  Created by Fabian Kropfhamer on 05.09.20.
//  Copyright © 2020 Fabian Kropfhamer. All rights reserved.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var score: Int = 0;
    @Published var task: String = "";
    
    var result: Int = 0;
    
    init() {
        self.createTask();
    }
    
    

    func createTask() {
        let a = Int.random(in: 1..<100);
        let b = Int.random(in: 1..<100);
        self.task = "\(a) + \(b)";
        self.result = a + b;
    }
    
    func increaseScore() {
        self.score += 1;
        print(self.score);
    }
    
    func submit(input: String) {
        print(input);
        let intInput = Int(input);
        if (intInput == self.result) {
            self.increaseScore();
            self.createTask();
        }
    }
}
