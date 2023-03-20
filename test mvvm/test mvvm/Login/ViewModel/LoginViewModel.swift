//
//  LoginViewModel.swift
//  test mvvm
//
//  Created by Guimel Moreno on 27/02/23.
//  
//

import Combine
import SwiftUI

@MainActor
protocol LoginViewModelProtocol: ObservableObject {
    var state: LoginViewState { get }
    func viewAppeared()
    func buttonTapped()
}


final class LoginViewModel {
    @Published private(set) var state: LoginViewState
	
	// MARK: - Initialization
	
	private var router: LoginRouterProtocol
	private var tracker: LoginTrackerProtocol
	
	init(state: LoginViewState = .loading, router: LoginRouterProtocol, tracker: LoginTrackerProtocol) {
		
        self.state = state
		self.router = router
		self.tracker = tracker
	}
    
    func execute() {
        
    }
}

extension LoginViewModel: LoginViewModelProtocol {
    func viewAppeared() {
        tracker.viewAppered()
    }
    
    func buttonTapped() {
        let data = LoginViewData(message: "Hello World")
        state = .loaded(data)
    }
}

private extension LoginViewModel {
    
}

