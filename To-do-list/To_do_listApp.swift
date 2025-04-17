//
//  To_do_listApp.swift
//  To-do-list
//
//  Created by Nya James on 3/11/25.
//

import SwiftUI
import SwiftData

@main
struct To_do_listApp: App {
    var body: some Scene {
        WindowGroup {
            MainTasksView()
            
        }
        .modelContainer(for: TaskItems.self)
    }
        
        init() {
            print(URL.applicationSupportDirectory.path(percentEncoded: false))
        }
}
