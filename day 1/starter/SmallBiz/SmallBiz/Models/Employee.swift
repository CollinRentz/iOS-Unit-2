//
//  Employee.swift
//  SmallBiz
//
//  Created by Collin Rentz on 11/16/22.
//

import Foundation

class Employee: Codable, Equatable {
    
    var firstName: String
    var lastName: String
    var tasks: [Task]
    var skillLevel: Int
    var id: String
    
    init(firstName: String, lastName: String, tasks: [Task] = [], skillLevel: Int = 0, id: String = UUID().uuidString) {
        self.firstName = firstName
        self.lastName = lastName
        self.tasks = tasks
        self.skillLevel = skillLevel
        self.id = id
    }
    
    static func == (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.id == rhs.id
    }
}
