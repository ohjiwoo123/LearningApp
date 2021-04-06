//
//  ContentDetailView.swift
//  LearningApp
//
//  Created by ohjiwoo on 2021/04/06.
//

import SwiftUI
import AVKit

struct ContentDetailView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {

        let lesson = model.currentLesson
        let url = URL(string: Constants.videoHostUrl + (lesson?.video ?? ""))
        
        VStack {
        // Only show video if we get a valid video
        if url != nil {
        VideoPlayer(player: AVPlayer(url: url!))
            .cornerRadius(10)
        }
        
        // Description
        
        // Show Next lesson button, only if there is a next lesson
            if model.hasNextLesson() {
                Button(action: {
                    // Advance the lesson
                    model.nextLesson()
                }, label:{
                    ZStack {
                        
                        Rectangle()
                            .frame(height:48)
                            .foregroundColor(Color.green)
                            .cornerRadius(10)
                            .shadow(radius : 5)
                    Text("Next Lesson: \(model.currentModule!.content.lessons[model.currentLessonIndex + 1].title)")
                        .foregroundColor(Color.white)
                        .bold()
                    }
                })
            }
          
        }
    }
}
struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
    }
}
