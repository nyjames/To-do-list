//
//  ContentView.swift
//  To-do-list
//
//  Created by Nya James on 3/11/25.
//

import SwiftUI

struct todolistView: View {
    
// ------- Declaration -------- //
    var todo:[todolistitems] = [
        
        todolistitems(
            title: "Walk Dog",
            tasks: "Samantha Reminded me to make sure to walk the dog tonight.",
            status: "Done"
        ),
        
        todolistitems(
            title: "Create Study Guide",
            tasks: "Create Study Guide for Math test for Mr. Arnold's Class.",
            status: "Done"
        ),
        
        todolistitems(
            title: "Walk Dog",
            tasks: "Samantha Reminded me to make sure to walk the dog tonight.",
            status: "Done"
        ),
        
        todolistitems(
            title: "Create Study Guide",
            tasks: "Create Study Guide for Math test for Mr. Arnold's Class.",
            status: "Done"
        ),
        
        todolistitems(
            title: "Walk Dog",
            tasks: "Samantha Reminded me to make sure to walk the dog tonight.",
            status: "Done"
        ),
        
        todolistitems(
            title: "Create Study Guide",
            tasks: "Create Study Guide for Math test for Mr. Arnold's Class.",
            status: "Done"
        ),
        
        todolistitems(
            title: "Walk Dog",
            tasks: "Samantha Reminded me to make sure to walk the dog tonight.",
            status: "Done"
        ),
        
        todolistitems(
            title: "Create Study Guide",
            tasks: "Create Study Guide for Math test for Mr. Arnold's Class.",
            status: "Done"
        ),
        
    ]
    
    var body: some View {
        
        
// --------------------------- //
        
        ZStack{
            Text("To do list")
                .bold()
        }
            
            List(todo) { task in
                
                VStack{
                    
                    Spacer()
                    
                    HStack{
                        
                        Spacer()
                        
                        Text(task.title)
                            .bold()
                            .font(.caption)
                        
                        Spacer()
                        
                        Text(task.status)
                            .font(.caption)
  
                    }
                    
                    Spacer()
                    
                    VStack{
                        
                        Spacer()
                        
                        Text(task.tasks)
                        
                        Spacer()
                    }
                        
                     
                     
                }
                .listRowSeparator(.automatic)

 
                
                
            }
            .listStyle(.plain)
        
        ZStack{
            Image(systemName: "plus")
        }.padding()
            
        

        
        
        
        

        
        
        
        
// --------------------------- //
    }
}

#Preview {
    todolistView()
}
