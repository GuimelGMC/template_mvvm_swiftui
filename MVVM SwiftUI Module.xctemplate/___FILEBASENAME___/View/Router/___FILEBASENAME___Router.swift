//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_moduleName___RouterProtocol {
    func dismiss()
}

struct ___VARIABLE_moduleName___Router {
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController? = nil) {
        self.navigationController = navigationController
    }
}

extension ___VARIABLE_moduleName___Router: ___VARIABLE_moduleName___RouterProtocol {
    func dismiss() {
        
    }
}
