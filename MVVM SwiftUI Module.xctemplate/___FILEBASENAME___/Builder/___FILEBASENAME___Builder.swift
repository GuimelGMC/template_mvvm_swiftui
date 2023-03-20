//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import SwiftUI

struct ___VARIABLE_moduleName___Builder {

	func build(with navigationController: UINavigationController?) -> UIViewController {
		let router = ___VARIABLE_moduleName___Router(navigationController: navigationController)
        let viewModel = ___VARIABLE_moduleName___ViewModel(router: router,
                                                           tracker: ___VARIABLE_moduleName___Tracker())
        var view = ___VARIABLE_moduleName___View(viewModel: viewModel)
		let hostingController = UIHostingController(rootView: view)
		view.hostingController = hostingController
        
		return hostingController
	}
}
