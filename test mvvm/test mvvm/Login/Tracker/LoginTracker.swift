//
//  LoginTracker.swift
//  test mvvm
//
//  Created by Guimel Moreno on 27/02/23.
//  
//

import Foundation


protocol LoginTrackerProtocol {
    func viewAppered()
}

struct LoginTracker {    
    
//    private var analytics: FITAnalyticsManager
    
    init(/*analytics: FITAnalyticsManager = .sharedInstance()*/) {
//        self.analytics = analytics
    }
}

extension LoginTracker: LoginTrackerProtocol {
    func viewAppered() {
        
    }
}
