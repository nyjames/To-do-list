//
//  CreateTasksView.swift
//  To-do-list
//
//  Created by Nya James on 4/11/25.
//

import SwiftUI



struct CreateTasksView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var item = TaskItems()
    @Environment(\.modelContext) var context

    
    
    
    var body: some View {
        
        ZStack{
            
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
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
                    
                    Button("Create") {
                        withAnimation {
                            context.insert(item)
                        }
                        dismiss()
                    }
                }.navigationTitle("Create Task")
                    .listStyle(.plain)
            }
        }
    }
}

#Preview {
    CreateTasksView()
        .modelContainer(for: TaskItems.self)
}
