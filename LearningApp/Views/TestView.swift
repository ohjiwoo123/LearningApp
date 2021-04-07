//
//  TestView.swift
//  LearningApp
//
//  Created by ohjiwoo on 2021/04/08.
//

import SwiftUI

struct TestView: View {
    
    @EnvironmentObject var model : ContentModel
    
    var body: some View {

        if model.currentQuestion != nil {
            VStack {
                // Question number
                Text("Question \(model.currentQuestionIndex + 1) of \(model.currentModule?.test.questions.count ?? 0)")
                // Question
                CodeTextView()
                // Answers
                
                // Button
               
            }
            .navigationBarTitle("\(model.currentModule?.category ?? "") Test")
        }

    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
