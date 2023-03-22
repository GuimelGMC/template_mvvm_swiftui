//
//  LoginTracker.swift
//  test mvvm
//
//  Created by Guimel Moreno on 21/03/23.
//  
//

import Foundation


protocol LoginTrackerProtocol {
    func viewAppeared()
}

struct LoginTracker {    
    
    init() {
        
    }
}

extension LoginTracker: LoginTrackerProtocol {
    func viewAppeared() {
        
    }
}
