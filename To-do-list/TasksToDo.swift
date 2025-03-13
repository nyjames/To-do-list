//
//  TasksToDo.swift
//  To-do-list
//
//  Created by Nya James on 3/11/25.
//

import Foundation

struct todolistitems:Identifiable {
    
    var id: UUID = UUID()
    
    var title = String()
    var tasks = String()
    var status = Bool()
    
    
}
