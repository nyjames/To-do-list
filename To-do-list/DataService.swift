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
    
    init(title: String = "",
         timestamp: Date = .now,
         dateDue: Date = .now,
         descr: String = "",
         status: String = "") {
        self.title = title
        self.timestamp = timestamp
        self.dateDue = dateDue
        self.descr = descr
        self.status = status
    }
}





