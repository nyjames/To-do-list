//
//  UpdateTaskView.swift
//  To-do-list
//
//  Created by Nya James on 4/12/25.
//

import SwiftUI
import SwiftData

struct UpdateTaskView: View {
    
    @Environment(\.dismiss) var dismiss
    @Bindable var item: TaskItems
    
    var body: some View {
        List {
            TextField("Name", text: $item.title)
                
            TextField("Description", text: $item.descr)
            DatePicker("Choose a Date",
                       selection: $item.dateDue,
                       displayedComponents: .date)
            DatePicker("Choose a time",
                       selection: $item.dateDue,
                       displayedComponents: .hourAndMinute)
            
            Picker("status", selection: $item.status) {
                Text("Not Started").tag("Not Started")
                Text("In Progress").tag("In Progress")
                Text("Completed").tag("Completed")
                
            }
            .pickerStyle(.menu)
            
            Button("Update") {
                withAnimation {
                    dismiss()
                }
                dismiss()
            }
        }.navigationTitle("Update")
            .listStyle(.plain)
    }
}

