//
//  ___FILEBASENAME___.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Combine
import SwiftUI
import VisualKit

struct ___FILEBASENAME___: View {
	
	@ObservedObject var viewModel: ___VARIABLE_moduleName___ViewModel
	
	init(viewModel: ___VARIABLE_moduleName___ViewModel) {
		self.viewModel = viewModel
	}
	
	var hostingController: UIHostingController<___FILEBASENAME___>? {
		didSet {
			// Can be removed if navigation bar does not have title
		}
	}
	
	var body: some View {
        ScrollView {
            Text(viewModel.strings.title)
        }
        .clipped()
        .padding(16)
        .navigationBarItems(trailing: HStack {
            // Add NavBarButtons here
        })
        .onAppear {
            viewModel.send(.viewAppeared)
        }
	}
}
