//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation


protocol ___VARIABLE_moduleName___TrackerProtocol {
    func viewAppered()
}

struct ___VARIABLE_moduleName___Tracker {    
    
    private var analytics: FITAnalyticsManager
    
    init(analytics: FITAnalyticsManager = .sharedInstance() ) {
        self.analytics = analytics
    }
}

extension ___VARIABLE_moduleName___Tracker: ___VARIABLE_moduleName___TrackerProtocol {
    func viewAppered() {
        
    }
}
