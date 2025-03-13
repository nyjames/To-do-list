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
                    
                        Text("True or False")
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
            .onAppear{
                
                todo = dataService.getData()
                
            }
        
        ZStack{
            
            HStack{
                
                Spacer()
                
                Image(systemName: "plus")
                
                Spacer()
                Spacer()
                
                Image(systemName: "plus")
                
                Spacer()
                Spacer()
                
                Image(systemName: "plus")
                
                Spacer()
                
            }
            

            
            
        }.padding()
            
        

        
        
        
        

        
        
        
        
// --------------------------- //
    }
}

#Preview {
    todolistView()
}
