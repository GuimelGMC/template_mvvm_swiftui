//
//  LoginView.swift
//  test mvvm
//
//  Created by Guimel Moreno on 27/02/23.
//  
//

import Combine
import SwiftUI

struct LoginView<T: LoginViewModelProtocol>: View {
	
    @ObservedObject var viewModel: T
	
    init(viewModel: T) {
		self.viewModel = viewModel
	}
	
	
	var body: some View {
        ScrollView {
            Text(.title)
            Button("Aceptar") {
                viewModel.buttonTapped()
            }.frame(height: 60)
            
            switch viewModel.state {
            case .loading:
                Text("Tap the button")
            case .loaded(let data):
                TextLabel(data)
            }
        }
        .clipped()
        .padding(16)
        .navigationBarItems(trailing: HStack {
            // Add NavBarButtons here
        })
        .onAppear {
            viewModel.viewAppeared()
        }
	}
}

private extension LoginView {
    
    func TextLabel(_ data: LoginViewData) -> some  View {
        Text(data.message)
    }
}

extension StringProtocol where Self == String {
    static var title: String { String.localizedStringWithFormat("title") }
}

//struct LoginView_Preview: PreviewProvider {
//    static var previews: some View {
//        LoginView(viewModel: LoginViewModel(router: LoginRouter(), tracker: LoginTracker()))
//    }
//}
