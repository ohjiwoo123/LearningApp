//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by ohjiwoo on 2021/04/05.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
