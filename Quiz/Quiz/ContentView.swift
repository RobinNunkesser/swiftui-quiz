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
                Spacer()
                Text(viewModel.answer)
                    .opacity(viewModel.resultOpacity)
                    .animation(.easeIn)
                HStack {
                    Spacer()
                    Button(action: viewModel.sendFalseAsAnswer) {
                        Text("Falsch")
                    }
                    Spacer()
                    Button(action: viewModel.sendTrueAsAnswer) {
                        Text("Richtig")
                    }
                    Spacer()
                }
                Button(action: viewModel.skipQuestion) {
                    Text("Überspringen")
                }
            }
            .padding(.all)
            .navigationBarTitle("Quiz")
            .navigationBarItems(trailing:
                NavigationLink(destination: StatisticsView().environmentObject(viewModel)) {
                    Text("Statistics")
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ContentViewModel())
    }
}
