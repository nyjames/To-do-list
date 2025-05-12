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
    @State var selectedCategory: Category?
    @Query private var categories: [Category]
    @Environment(\.modelContext) var context
    
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
            
            Picker("Categories", selection: $selectedCategory) {
                
                ForEach(categories) { category in
                    Text(category.title)
                        .tag(category as Category?)
                }
                
                Text("None")
                    .tag(nil as Category?)
            }.pickerStyle(.automatic)
            
            Button("Update") {
                save()
                withAnimation {
                    dismiss()
                }
                dismiss()
            }
            
            
        }.navigationTitle("Update")
            .listStyle(.plain)
    }
}

private extension UpdateTaskView {
    
    func save() {
        context.insert(item)
        item.category = selectedCategory
        selectedCategory?.items?.append(item)
    }
}

