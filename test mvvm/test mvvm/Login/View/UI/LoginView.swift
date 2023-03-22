//
//  LoginView.swift
//  test mvvm
//
//  Created by Guimel Moreno on 21/03/23.
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
        VStack(spacing: 16){
            switch viewModel.state {
            case .loading:
                Button("Tap me") {
                    viewModel.buttonTapped()
                }.frame(height: 60)
                Button("Abir otro módulo") {
                    viewModel.openOtherModule()
                }.frame(height: 60)
            case .loaded(let data):
                TextLabelExample(data)
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
    func TextLabelExample(_ data: LoginViewData) -> some View {
        Text(data.message)
    }
}

extension StringProtocol where Self == String {
//    static var titleLogin: String { String.localizedStringWithFormat("title") }
}

struct LoginView_Preview: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginViewModel(router: LoginRouter(), tracker: LoginTracker()))
    }
}
