//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import SwiftUI

protocol ___VARIABLE_moduleName___RouterProtocol {
    func showScreen<T: ___VARIABLE_moduleName___ViewModelProtocol>(viewModel: T)
    func dismiss()
}

class ___VARIABLE_moduleName___Router {
    private var navigation: UIViewController?
    
    init(navigation: UIViewController? = nil) {
        self.navigation = navigation
    }
}

extension ___VARIABLE_moduleName___Router: ___VARIABLE_moduleName___RouterProtocol {

    func showScreen<T>(viewModel: T) where T : ___VARIABLE_moduleName___ViewModelProtocol {
        
        guard let navigation = navigation as? UINavigationController else { return }
        let view = ___VARIABLE_moduleName___View(viewModel: viewModel)
        let host = UIHostingController(rootView: view)
        navigation.pushViewController(host, animated: true)
    }

    func dismiss() {
        
    }
}
