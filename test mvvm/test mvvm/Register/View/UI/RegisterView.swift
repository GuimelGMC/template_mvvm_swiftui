//
//  RegisterView.swift
//  test mvvm
//
//  Created by Guimel Moreno on 21/03/23.
//  
//

import Combine
import SwiftUI

struct RegisterView<T: RegisterViewModelProtocol>: View {
	
	@ObservedObject var viewModel: T
	
	init(viewModel: T) {
		self.viewModel = viewModel
	}
	
	var body: some View {
        VStack(spacing: 16){
            Text(.title)
            Button("Aceptar") {
                viewModel.buttonTapped()
            }.frame(height: 60)
            
            switch viewModel.state {
            case .loading:
                Text("Tap the button")
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

private extension RegisterView {
    func TextLabelExample(_ data: RegisterViewData) -> some View {
        Text(data.message)
    }
}

extension StringProtocol where Self == String {
//    static var titleRegister: String { String.localizedStringWithFormat("title") }
}

//struct RegisterView_Preview: PreviewProvider {
//    static var previews: some View {
//        RegisterView(viewModel: RegisterViewModel(router: RegisterRouter(), tracker: RegisterTracker()))
//    }
//}