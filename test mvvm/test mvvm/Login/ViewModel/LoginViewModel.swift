//
//  LoginViewModel.swift
//  test mvvm
//
//  Created by Guimel Moreno on 21/03/23.
//  
//

import Combine

protocol LoginViewModelProtocol: ObservableObject {
	var state: LoginViewState { get }
	func showScreen()
	func viewAppeared()
	func buttonTapped()
    func openOtherModule()
}

final class LoginViewModel {
	
	@Published private(set) var state: LoginViewState

	private let router: LoginRouterProtocol
	private let tracker: LoginTrackerProtocol
	private var viewData: LoginViewData?
	
	init(state: LoginViewState = .loading,
         router: LoginRouterProtocol,
         tracker: LoginTrackerProtocol) {

		self.state = state
		self.router = router
		self.tracker = tracker
	}
    
}

extension LoginViewModel: LoginViewModelProtocol {

	func showScreen() {
        router.showScreen(viewModel: self)
    }

	func viewAppeared() {
		tracker.viewAppeared()
	}

	func buttonTapped() {
		printHelloWorld()
	}
    
    func openOtherModule() {
        router.pushRegisterModule()
    }
}

private extension LoginViewModel {
	func printHelloWorld() {
    	viewData = LoginViewData(message: "Hola Mundo")

		guard let viewData else {
			return
		}
		state = .loaded(viewData)
		self.viewData = viewData
	}
} 
