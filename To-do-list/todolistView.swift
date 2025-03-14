//
//  ContentView.swift
//  To-do-list
//
//  Created by Nya James on 3/11/25.
//

import SwiftUI

struct todolistView: View {
    
// ------- Declaration -------- //
    
    @State var todo:[todolistitems] = [todolistitems]()
    var dataService = DataService()
    
    func delete(_ task: todolistitems) {
        if let index = todo.firstIndex(where: {$0.id == task.id }) {
            todo.remove(at: index)
        }
    }
    
    var body: some View {
        
        
// --------------------------- //
        
        ZStack{
            Text("To do list")
                .bold()
        }
        
        List(todo) {task in
            
            VStack{
                
                Spacer()
                
                HStack{
                    
                    Text(task.title)
                        .bold()
                        .font(.caption)
                    
                    Spacer()
                    Spacer()
                    
                    
                        .font(.caption)
                    
                }
                
                Spacer()
                
                VStack{
                    
                    Spacer()
                    
                    Text(task.tasks)
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    Spacer()
                    
                    Button {
                        delete(task)
                    } label: {
                        Image(systemName: "trash")
                            .resizable()
                            .frame(width: 16, height: 18)
                    }

    
                    
                    
                    
                }
                
                Spacer()
                
                
                
            }
            .listRowSeparator(.automatic)
            
            
            
            
        }
        .listStyle(.plain)
        .onAppear{
            
            todo = dataService.getData()
            
        }
        
        ZStack{
            
            HStack{
                
                Button {
                    
                    // pass
                } label: {
                    Text(" New Task ")
                        .font(.caption)
                        .padding()
                        .border(.black)
                        .foregroundStyle(.black)
                    
                }
                
                
            }
            
            
            
            
        }.padding()
        

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        // --------------------------- //
    }
    
}

#Preview {
    todolistView()
}
