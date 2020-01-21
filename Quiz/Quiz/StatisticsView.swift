import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var viewModel : ContentViewModel
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 8.0) {
                HStack {
                    Text("Bearbeitete Fragen")
                    Spacer()
                    Text("\(viewModel.questionsSeen)")
                        .multilineTextAlignment(.trailing)
                }
                HStack {
                    Text("Richtig beantwortet")
                    Spacer()
                    Text("\(viewModel.correctAnswers)")
                        .multilineTextAlignment(.trailing)
                }
                HStack {
                    Text("Falsch beantwortet")
                    Spacer()
                    Text("\(viewModel.wrongAnswers)")
                        .multilineTextAlignment(.trailing)
                }
                HStack {
                    Text("Übersprungen")
                    Spacer()
                    Text("\(viewModel.skippedQuestions)")
                        .multilineTextAlignment(.trailing)
                }
                Spacer()
            }
            .padding(.all)
            .navigationBarTitle("Statistics")
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView().environmentObject(ContentViewModel())
    }
}
