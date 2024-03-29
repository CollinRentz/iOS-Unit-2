//
//  Task.swift
//  SmallBiz
//
//  Created by Collin Rentz on 11/16/22.
//

import Foundation

class Task: Codable, Equatable {
    
    var title: String
    var isComplete: Bool
    var id: String
    
    init(title: String, isComplete: Bool = false, id: String = UUID().uuidString) {
        self.title = title
        self.isComplete = isComplete
        self.id = id
    }
    
    static func == (lhs: Task, rhs: Task) -> Bool {
        return lhs.id == rhs.id
    }
}
