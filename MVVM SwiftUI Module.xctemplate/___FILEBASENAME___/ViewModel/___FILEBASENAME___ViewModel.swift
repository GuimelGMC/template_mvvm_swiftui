//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Combine
import SwiftUI

final class ___VARIABLE_moduleName___ViewModel: ObservableObject {
	
	// MARK: - States
	
	enum Event {
		case viewAppeared
	}
	
    enum State: Equatable {
        struct LoadedState: Equatable {
            
		}
		case loading
		case loaded(LoadedState)
	}
    
    @Published private(set) var state: ___VARIABLE_moduleName___ViewModel.State
    let strings = Strings()
	
	// MARK: - Statics
	
	struct Strings {
        let title = "___VARIABLE_moduleName___"
	}
	
	// MARK: - Initialization
	
	private let router: ___VARIABLE_moduleName___RouterProtocol
	private let tracker: ___VARIABLE_moduleName___TrackerProtocol
	
	init(state: ___VARIABLE_moduleName___ViewModel.State = .loading,
         router: ___VARIABLE_moduleName___RouterProtocol,
         tracker: ___VARIABLE_moduleName___TrackerProtocol) {
		self.state = state
		self.router = router
		self.tracker = tracker
	}
    
    // MARK: - Public methods
	
	public func send(_ event: Event) {
		switch event {
		case .viewAppeared:
			tracker.viewAppeared()
		}
	}
}

private extension ___VARIABLE_moduleName___ViewModel {
    
}
