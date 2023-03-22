//
//  LoginViewState.swift
//  test mvvm
//
//  Created by Guimel Moreno on 21/03/23.
//  
//

import Foundation

@MainActor enum LoginViewState: Equatable {
    case loading
    case loaded(LoginViewData)
}
