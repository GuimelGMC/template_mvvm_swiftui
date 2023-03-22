//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Combine

protocol ___VARIABLE_moduleName___ViewModelProtocol: ObservableObject {
	var state: ___VARIABLE_moduleName___ViewState { get }
	func showScreen()
	func viewAppeared()
	func buttonTapped()
}

final class ___VARIABLE_moduleName___ViewModel {
	
	@Published private(set) var state: ___VARIABLE_moduleName___ViewState

	private let router: ___VARIABLE_moduleName___RouterProtocol
	private let tracker: ___VARIABLE_moduleName___TrackerProtocol
	private var viewData: ___VARIABLE_moduleName___ViewData?
	
	init(state: ___VARIABLE_moduleName___ViewState = .loading,
         router: ___VARIABLE_moduleName___RouterProtocol,
         tracker: ___VARIABLE_moduleName___TrackerProtocol) {

		self.state = state
		self.router = router
		self.tracker = tracker
	}
    
}

extension ___VARIABLE_moduleName___ViewModel: ___VARIABLE_moduleName___ViewModelProtocol {

	func showScreen() {
        router.showScreen(viewModel: self)
    }

	func viewAppeared() {
		tracker.viewAppeared()
	}

	func buttonTapped() {
		printHelloWorld()
	}
}

private extension ___VARIABLE_moduleName___ViewModel {
	func printHelloWorld() {
    	viewData = ___VARIABLE_moduleName___ViewData(message: "Hola Mundo")

		guard let viewData else {
			return
		}
		state = .loaded(viewData)
		self.viewData = viewData
	}
} 
