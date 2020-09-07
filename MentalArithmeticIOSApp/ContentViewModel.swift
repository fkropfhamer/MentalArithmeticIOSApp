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
    
    func createAdditionTask() {
        let a = Int.random(in: 1..<100);
        let b = Int.random(in: 1..<100);
        self.task = "\(a) + \(b)";
        self.result = a + b;
    }
    
    func createSubtractionTask() {
        let a = Int.random(in: 1..<100);
        let b = Int.random(in: 1..<100);
        
        if (a > b) {
            self.task = "\(a) - \(b)";
            self.result = a - b;
            return;
        }
        self.task = "\(b) - \(a)";
        self.result = b - a;
    }
    
    func createMultiplicationTask() {
        let a = Int.random(in: 1..<11);
        let b = Int.random(in: 1..<11);
        self.task = "\(a) * \(b)";
        self.result = a * b;
    }

    func createDivisionTask() {
        let a = Int.random(in: 1..<11);
        let b = Int.random(in: 1..<11);
        let c = a * b
        self.task = "\(c) / \(b)";
        self.result = a;
    }
    
    func createTask() {
        let randomTaskType = TaskType.allCases.randomElement();
        switch randomTaskType {
        case .Addition:
            self.createAdditionTask();
        case .Subtraction:
            self.createSubtractionTask();
        case .Multiplication:
            self.createMultiplicationTask();
        case .Division:
            self.createDivisionTask();
        default:
            self.createAdditionTask();
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
