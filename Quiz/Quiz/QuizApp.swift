//
//  QuizApp.swift
//  Quiz
//
//  Created by Prof. Dr. Nunkesser, Robin on 09.12.21.
//  Copyright © 2021 Hochschule Hamm-Lippstadt. All rights reserved.
//

import SwiftUI

@main
struct QuizApp: App {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewModel)
        }
    }
}
