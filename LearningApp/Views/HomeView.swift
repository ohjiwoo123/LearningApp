//
//  ContentView.swift
//  LearningApp
//
//  Created by ohjiwoo on 2021/04/05.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model : ContentModel
    
    var body: some View {
       Text("Hello World")
        .padding()
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
