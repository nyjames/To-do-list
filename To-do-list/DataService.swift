//
//  DataService.swift
//  To-do-list
//
//  Created by Nya James on 3/13/25.
//

import Foundation
import SwiftData

@Model
final class TaskItems {
    var title: String
    var timestamp: Date
    var dateDue: Date
    var descr: String
    var status: String
    
    @Relationship(inverse: \Category.items)
    var category: Category?
    
    init(title: String = "",
         timestamp: Date = .now,
         dateDue: Date = .now,
         descr: String = "",
         status: String = "Not Started",
         category: Category? = nil) {
        self.title = title
        self.timestamp = timestamp
        self.dateDue = dateDue
        self.descr = descr
        self.status = status
        self.category = category
    }
}

func createSampleTasks(context: ModelContext) {
    
    let personal = Category(title: "Personal")
    let education = Category(title: "Education")
    let physical_health = Category(title: "Physical Health")
    let appointments = Category(title: "Appointments")
    
    
    let task1 = TaskItems(title: "Lorem ipsum dolor sit amet", timestamp: Date.now, dateDue: Date.distantFuture, descr: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", status: "Not Started", category: personal)
    
    let task2 = TaskItems(title: "Title Example", timestamp: Date.now, dateDue: Date.now, descr: "Here is a simple description to show that you can write within the task container.", status: "Not Started", category: education)
    
    let task3 = TaskItems(title: "Title Example", timestamp: Date.now, dateDue: Date.distantPast, descr: "Here is a simple description to show that you can write within the task container.", status: "Not Started", category: physical_health)
    
    context.insert(personal)
    context.insert(education)
    context.insert(physical_health)
    context.insert(appointments)
    
    context.insert(task1)
    context.insert(task2)
    context.insert(task3)
    
    
}




