//
//  ContentView.swift
//  Quiz
//
//  Created by Prof. Dr. Nunkesser, Robin on 19.12.19.
//  Copyright © 2019 Hochschule Hamm-Lippstadt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel : ContentViewModel
    
    var body: some View {
        NavigationView {
            VStack(spacing: 8.0) {
                Spacer()
                Text(viewModel.question)
                    .font(.headline)
                    .animation(.easeIn)
                Spacer()
                Text(viewModel.answer)
                    .opacity(viewModel.resultOpacity)
                    .animation(.easeIn)
                HStack {
                    Spacer()
                    Button(action: { self.viewModel.evaluateAnswer(answer: false) }) {
                        Text("Falsch")
                    }
                    .disabled(viewModel.buttonsDisabled)
                    Spacer()
                    Button(action: { self.viewModel.evaluateAnswer(answer: true) }) {
                        Text("Richtig")
                    }
                    .disabled(viewModel.buttonsDisabled)
                    Spacer()
                }
                Button(action: viewModel.skipQuestion) {
                    Text("Überspringen")
                }
                .disabled(viewModel.buttonsDisabled)
            }
            .padding(.all)
            .navigationBarTitle("Quiz")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: StatisticsView()) {
                                        Text("Statistics")
                                    }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().environmentObject(ContentViewModel())
            ContentView().previewDevice("iPhone 12 Pro Max").environmentObject(ContentViewModel())
        }
    }
}
