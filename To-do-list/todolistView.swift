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
        
        func add(_ task: todolistitems) {
            // add to
        }
    }
    
    
    
    
    var body: some View {
        
        
        // --------------------------- //
        
        
        
        
        
        
        ZStack{
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            
            
            
            
            
            VStack{
                
                
                Circle()
                    .frame(width: 405, height: 500)
                    .offset(x: 0, y: -160)
                    .foregroundStyle(
                        Color(hex: "#C4C3E3")
                    )
                
                
                
                
                
                Spacer()
                
            }
            
            Spacer()
            
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                VStack{
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    HStack{
                        
                        Text("Hello Nya, Welcome Back!")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        
                        Spacer()
                        
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                        
                        
                        
                        
                        
                    }.padding()
                        .foregroundStyle(
                            Color(hex: "#504E76")
                        )
                    
                    
                    ZStack{
                        
                        Rectangle()
                        
                        Color(.white)
                        
                        
                        VStack{
                            
                            Text("Quote of the day")
                                .font(.title2)
                                .bold()
                            
                            HStack {
                                
                                Text("Hello, Name! You deserve to have your life together. Act like it!")
                                    .font(.headline)
                                    .bold()
                                
                                Spacer()
                                
                            }.padding()
                            
                        }.foregroundStyle(
                            Color(hex: "#504E76")
                        )
                        
                        
                        
                        
                        
                    }.frame(width: 375, height: 200)
                        .cornerRadius(15)
                        .padding()
                        .shadow(radius: 6, x: 5, y: 5)
                    
                    
                    
                    
                    
                    //title
                    
                    HStack {
                        
                        Text("Task Folders")
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                        
                    }.padding()
                        .foregroundStyle(
                            Color(hex: "#41549a")
                        )
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            
                            
                                
                                Color(hex: "#504E76")
                                Circle()
                                    .frame(width: 275, height: 500)
                                    .offset(x: 0, y: -150)
                                    .foregroundStyle(
                                        Color(hex: "#DDD7E5")
                                    )
                                
                                VStack{
                                    Image(systemName: "folder.fill")
                                        .resizable()
                                        .frame(width: 100, height: 70)
                                        .shadow(radius: 6, x: 5, y: 5)
                                        .padding()
                                    
                                    Text("School Assignments")
                                        .font(.headline)
                                        .padding()
                                    
                                }.padding()
                                
                                
                            }.frame(width: 200, height: 250)
                            
                                .cornerRadius(25)
                            
                                .foregroundStyle(
                                    Color(hex: "#F0E6E4")
                                )
                            
                                .shadow(radius: 6, x: 5, y: 5)
                            
                            ZStack {
                                
                                Color(hex: "#504E76")
                                Circle()
                                    .frame(width: 275, height: 500)
                                    .offset(x: 0, y: -150)
                                    .foregroundStyle(
                                        Color(hex: "#DDD7E5")
                                    )
                                
                                VStack{
                                    Image(systemName: "folder.fill")
                                        .resizable()
                                        .frame(width: 100, height: 70)
                                        .shadow(radius: 6, x: 5, y: 5)
                                        .padding()
                                    
                                    Text("School Assignments")
                                        .font(.headline)
                                        .padding()
                                    
                                }.padding()
                                
                                
                            }.frame(width: 200, height: 250)
                            
                                .cornerRadius(25)
                            
                                .foregroundStyle(
                                    Color(hex: "#F0E6E4")
                                )
                                .shadow(radius: 6, x: 5, y: 5)
                            
                            ZStack {
                                
                                Color(hex: "#504E76")
                                Circle()
                                    .frame(width: 275, height: 500)
                                    .offset(x: 0, y: -150)
                                    .foregroundStyle(
                                        Color(hex: "#DDD7E5")
                                    )
                                
                                VStack{
                                    Image(systemName: "folder.fill")
                                        .resizable()
                                        .frame(width: 100, height: 70)
                                        .shadow(radius: 6, x: 5, y: 5)
                                        .padding()
                                    
                                    Text("School Assignments")
                                        .font(.headline)
                                        .padding()
                                    
                                }.padding()
                                
                                
                            }.frame(width: 200, height: 250)
                            
                                .cornerRadius(25)
                            
                                .foregroundStyle(
                                    Color(hex: "#F0E6E4")
                                )
                                .shadow(radius: 6, x: 5, y: 5)
                        }
                        
                        
                    }
                    
                    HStack {
                        
                        Text("Current tasks to complete")
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                        
                    }.padding()
                    
                    VStack {
                        ScrollView(.vertical, showsIndicators: false) {
                            ForEach(todo) { task in
                                
                                
                                
                                
                                ZStack{
                                    
                                    Rectangle()
                                    
                                    Color(.white)
                                    
                                    VStack{
                                        
                                        HStack{
                                            Text(task.title)
                                                .font(.title2)
                                                .bold()
                                            
                                            Spacer()
                                            
                                            // Delete Button
                                            
                                            Button {
                                                delete(task)
                                            } label: {
                                                Image(systemName: "trash")
                                                    
                                            }
                                            
                                            
                                        }
                                        
                                        
                                        HStack{
                                            Text("Due at 3:00PM")
                                            
                                            Spacer()
                                            
                                            Text("03/21")
                                            
                                            
                                        }
                                        
                                        Spacer()
                            
                                        VStack{
                                            Text(task.tasks)
                                        }
                                        
                                        Spacer()
                                        
                                        HStack{
                                            
                                            Text(task.status)
                                            
                                            Spacer()
                                        }
                                        
                                        
                                    }.padding()

 
                                }.frame(width: 375, height: 200)
                                    .cornerRadius(15)
                                    .padding()
                                    .shadow(radius: 6, x: 5, y: 5)
                                
                                
                            }
                        }
                        .onAppear{
                            todo = dataService.getData()
                        }
                        
                    }
                }
                
            }
        
    }.ignoresSafeArea()
    
    
    
            
        
  
        
        

            
    
        
        
        
        // --------------------------- //
    }
    
}

#Preview {
    todolistView()
}
