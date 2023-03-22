//
//  RegisterViewState.swift
//  test mvvm
//
//  Created by Guimel Moreno on 21/03/23.
//  
//

import Foundation

@MainActor enum RegisterViewState: Equatable {
    case loading
    case loaded(RegisterViewData)
}
