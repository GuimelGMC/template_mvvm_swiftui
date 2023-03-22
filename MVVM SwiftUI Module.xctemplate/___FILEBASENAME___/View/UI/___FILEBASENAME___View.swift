//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Combine
import SwiftUI

struct ___VARIABLE_moduleName___View<T: ___VARIABLE_moduleName___ViewModelProtocol>: View {
	
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

private extension ___VARIABLE_moduleName___View {
    func TextLabelExample(_ data: ___VARIABLE_moduleName___ViewData) -> some View {
        Text(data.message)
    }
}

extension StringProtocol where Self == String {
//    static var title___VARIABLE_moduleName___: String { String.localizedStringWithFormat("title") }
}

//struct ___VARIABLE_moduleName___View_Preview: PreviewProvider {
//    static var previews: some View {
//        ___VARIABLE_moduleName___View(viewModel: ___VARIABLE_moduleName___ViewModel(router: ___VARIABLE_moduleName___Router(), tracker: ___VARIABLE_moduleName___Tracker()))
//    }
//}