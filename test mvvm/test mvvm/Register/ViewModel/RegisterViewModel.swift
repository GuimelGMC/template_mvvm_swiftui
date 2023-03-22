//
//  RegisterViewModel.swift
//  test mvvm
//
//  Created by Guimel Moreno on 21/03/23.
//  
//

import Combine

protocol RegisterViewModelProtocol: ObservableObject {
	var state: RegisterViewState { get }
	func showScreen()
	func viewAppeared()
	func buttonTapped()
}

final class RegisterViewModel {
	
	@Published private(set) var state: RegisterViewState

	private let router: RegisterRouterProtocol
	private let tracker: RegisterTrackerProtocol
	private var viewData: RegisterViewData?
	
	init(state: RegisterViewState = .loading,
         router: RegisterRouterProtocol,
         tracker: RegisterTrackerProtocol) {

		self.state = state
		self.router = router
		self.tracker = tracker
	}
    
}

extension RegisterViewModel: RegisterViewModelProtocol {

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

private extension RegisterViewModel {
	func printHelloWorld() {
    	viewData = RegisterViewData(message: "Hola Mundo")

		guard let viewData else {
			return
		}
		state = .loaded(viewData)
		self.viewData = viewData
	}
} 
