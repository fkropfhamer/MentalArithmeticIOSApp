//
//  ContentViewModel.swift
//  MentalArithmeticIOSApp
//
//  Created by Fabian Kropfhamer on 05.09.20.
//  Copyright © 2020 Fabian Kropfhamer. All rights reserved.
//

import Foundation

enum TaskType: CaseIterable {
    case Addition
    case Subtraction
    case Multiplication
    case Division
}

class ContentViewModel: ObservableObject {
    @Published var score: Int = 0;
    @Published var task: String = "";
    
    var result: Int = 0;
    
    init() {
        self.createTask();
    }
    
    

    func createTask() {
        let randomTaskType = TaskType.allCases.randomElement();
        switch randomTaskType {
        case .Addition:
            let a = Int.random(in: 1..<100);
            let b = Int.random(in: 1..<100);
            self.task = "\(a) + \(b)";
            self.result = a + b;
        case .Subtraction:
            let a = Int.random(in: 1..<100);
            let b = Int.random(in: 1..<100);
            
            if (a > b) {
                self.task = "\(a) - \(b)";
                self.result = a - b;
                return;
            }
            self.task = "\(b) - \(a)";
            self.result = b - a;
        case .Multiplication:
            let a = Int.random(in: 1..<11);
            let b = Int.random(in: 1..<11);
            self.task = "\(a) * \(b)";
            self.result = a * b;
        case .Division:
            let a = Int.random(in: 1..<11);
            let b = Int.random(in: 1..<11);
            let c = a * b
            self.task = "\(c) / \(b)";
            self.result = a;
        default:
            print("");
        }
        
        
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
