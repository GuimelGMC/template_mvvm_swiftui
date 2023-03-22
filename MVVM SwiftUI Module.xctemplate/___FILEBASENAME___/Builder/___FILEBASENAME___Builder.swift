//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

struct ___VARIABLE_moduleName___Builder {

	private let viewModel: any ___VARIABLE_moduleName___ViewModelProtocol

	init(navigation: UIViewController?) {
        let router = ___VARIABLE_moduleName___Router(navigation: navigation)
        viewModel = ___VARIABLE_moduleName___ViewModel(router: router,
                                      tracker: ___VARIABLE_moduleName___Tracker())
        
    }
    
    func showScreen()  {
        viewModel.showScreen()
    }
}
