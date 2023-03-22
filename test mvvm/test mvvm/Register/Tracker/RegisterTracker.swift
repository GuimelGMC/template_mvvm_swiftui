//
//  RegisterTracker.swift
//  test mvvm
//
//  Created by Guimel Moreno on 21/03/23.
//  
//

import Foundation


protocol RegisterTrackerProtocol {
    func viewAppeared()
}

struct RegisterTracker {    
    
    init() {
        
    }
}

extension RegisterTracker: RegisterTrackerProtocol {
    func viewAppeared() {
        
    }
}
