//
//  RepeatChecker.swift
//  RegExSwift
//
//  Created by White on 2019/5/30.
//  Copyright © 2019 Ali-White. All rights reserved.
//

import Foundation

class RepeatChecker {
    private let quantifier: QuantifierMenifest
    private var repeatCount: UInt = 0
    
    init(with quantifier: QuantifierMenifest) {
        self.quantifier = quantifier
    }
    
    private func repeatCriteriaHasBeenMet() -> Bool {
        return repeatCount >= quantifier.lowerBound && repeatCount <= quantifier.higherBound
    }
    
    func needRepeat() -> Bool {
        return !self.repeatCriteriaHasBeenMet()
    }
    
    func canRepeat() -> Bool {
        return self.repeatCount < quantifier.higherBound
    }
    
    func canZeroRepeat() -> Bool {
        return self.quantifier.lowerBound == 0
    }

    func forward() {
        repeatCount += 1
    }
}
