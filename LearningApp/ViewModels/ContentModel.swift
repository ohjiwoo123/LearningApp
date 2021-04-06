//
//  ContentModel.swift
//  LearningApp
//
//  Created by ohjiwoo on 2021/04/05.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    
    var styleData: Data?
    
    init() {
        
        getLocalData()
        
    }
    
    func getLocalData() {
        
        // Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        

        do {
            // Read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            // Try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
       
        
            // Assign parsed modules to module property
            self.modules = modules
        }
        
        
        
        catch {
            // Tood log error
            print("Couldn't parse local data")
        }
        // Parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do {
            // Read the file into a data object
            let styleData = try Data(contentsOf: styleUrl!)
            
            self.styleData = styleData
         
        }
        catch {
           // Log error
            print("Couldn't parse style data")
        }
    }
}
