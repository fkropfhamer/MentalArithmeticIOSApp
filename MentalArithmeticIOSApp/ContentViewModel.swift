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
    @Published var task: String = "1 + 1";

    
    func increaseScore() {
        self.score += 1;
        print(self.score);
    }
    
    func submit(input: String) {
        print(input);
        self.increaseScore();
    }
}
