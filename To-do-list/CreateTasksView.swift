//
//  CreateTasksView.swift
//  To-do-list
//
//  Created by Nya James on 4/11/25.
//

import SwiftUI
import SwiftData



struct CreateTasksView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var item = TaskItems()
    @Environment(\.modelContext) var context
    
    @State var selectedCategory: Category?
    @Query private var categories: [Category]

    
    
    
    var body: some View {
        
        ZStack{
            
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                List {
                    TextField("Name", text: $item.title)
                        
                    TextField("Description", text: $item.descr)
                        .frame(height: 100)
                        .padding()
                      
                    DatePicker("Choose a time",
                               selection: $item.dateDue,
                               displayedComponents: .hourAndMinute)
                    
                    DatePicker("Choose a Date",
                               selection: $item.dateDue,
                               displayedComponents: .date)
                    
                    
                    Picker("status", selection: $item.status) {
                        Text("Not Started").tag("Not Started")
                        Text("In Progress").tag("In Progress")
                        Text("Completed").tag("Completed")
                        
                    }
                    .pickerStyle(.menu)
                    
                    Picker("", selection: $selectedCategory) {
                        
                        ForEach(categories) { category in
                            Text(category.title)
                                .tag(category as Category?)
                        }
                        Text("None")
                            .tag(nil as Category?)
                    }
                    
                    Button("Create") {
                        withAnimation {
                            context.insert(item)
                        }
                        save()
                        dismiss()
                    }
                }.navigationTitle("Create Task")
                    .listStyle(.plain)
            }
        }
    }
}

private extension CreateTasksView {
    
    func save() {
        context.insert(item)
        item.category = selectedCategory
        selectedCategory?.items?.append(item)
    }
}

#Preview {
    CreateTasksView()
        .modelContainer(for: TaskItems.self)
}
