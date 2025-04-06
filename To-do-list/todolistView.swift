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
                        Color(hex: "#DDD7E5")
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
                        
                        ZStack{
                            
                            Circle()
                                .frame(width: 60, height: 60)
                                .foregroundStyle(
                                    Color(hex: "#ffffff")
                                )
                            
                            
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding()
                            
                        }
                        
                        
                        
                        
                        
                        
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
                                    .fontWeight(.heavy)
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
                        
                        Text("Saved Tasks")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        
                        Spacer()
                        
                    }.padding()
                        .foregroundStyle(
                            Color(hex: "#504E76")
                        )
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            
                            ZStack{
                                
                                Rectangle()
                                Color(.white)
                                
                                
                                
                                
                                
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
                                            .frame(width: 80, height: 50)
                                            .shadow(radius: 6, x: 5, y: 5)
                                            .padding()
                                        
                                        Text("School Assignments")
                                            .font(.title2)
                                            .fontWeight(.heavy)
                                            .bold()
                                            .padding()
                                        
                                    }.padding()
                                    
                                    
                                }.frame(width: 180, height: 230)
                                
                                    .cornerRadius(25)
                                
                                    .foregroundStyle(
                                        Color(hex: "#F0E6E4")
                                    )
                                
                                   
                                
                                
                            }
                            .cornerRadius(25)
                            .frame(width: 190, height: 240)
                            .shadow(radius: 6, x: 5, y: 5)
                            
                            
                            
                            ZStack{
                                
                                Rectangle()
                                Color(.white)
                                
                                
                                
                                
                                
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
                                            .frame(width: 80, height: 50)
                                            .shadow(radius: 6, x: 5, y: 5)
                                            .padding()
                                        
                                        Text("School Assignments")
                                            .font(.title2)
                                            .fontWeight(.heavy)
                                            .bold()
                                            .padding()
                                        
                                    }.padding()
                                    
                                    
                                }.frame(width: 180, height: 230)
                                
                                    .cornerRadius(25)
                                
                                    .foregroundStyle(
                                        Color(hex: "#F0E6E4")
                                    )
                                
                                    
                                
                                
                            }
                            .cornerRadius(25)
                            .frame(width: 190, height: 240)
                            .shadow(radius: 6, x: 5, y: 5)
                            
                            
                            ZStack{
                                
                                Rectangle()
                                Color(.white)
                                
                                
                                
                                
                                
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
                                            .frame(width: 80, height: 50)
                                            .shadow(radius: 6, x: 5, y: 5)
                                            .padding()
                                        
                                        Text("School Assignments")
                                            .font(.title2)
                                            .fontWeight(.heavy)
                                            .bold()
                                            .padding()
                                        
                                    }.padding()
                                    
                                    
                                }.frame(width: 180, height: 230)
                                
                                    .cornerRadius(25)
                                
                                    .foregroundStyle(
                                        Color(hex: "#F0E6E4")
                                    )
                                
                            
                                
                                    
                                
                                
                            }
                            .cornerRadius(25)
                            .frame(width: 190, height: 240)
                            .shadow(radius: 6, x: 5, y: 5)
                            
                            
                            
                            
                            
                        }
                    }
                    .padding()

                    
                    HStack {
                        
                        Text("Tasks to Complete")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        
                        Spacer()
                        
                    }.padding()
                        .foregroundStyle(
                            Color(hex: "#504E76")
                        )
                    
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
                                                .foregroundStyle(
                                                    Color(hex: "#504E76")
                                                )
                                            
                                            Spacer()
                                            
                                            // Delete Button
                                            
                                            ZStack{
                                                
                                                Circle()
                                                    .frame(width: 30, height: 30)
                                                    .foregroundStyle(
                                                        Color(hex: "#504E76")
                                                    )
                                                
                                                Button {
                                                    delete(task)
                                                } label: {
                                                    Image(systemName: "pencil")
                                                        .bold()
                                                        .foregroundStyle(
                                                            Color(hex: "#DDD7E5")
                                                        )
                                                        
                                                }
                                                
                                                
                                            }
                                            
                                            ZStack{
                                                
                                                Circle()
                                                    .frame(width: 30, height: 30)
                                                    .foregroundStyle(
                                                        Color(hex: "#504E76")
                                                    )
                                                
                                                Button {
                                                    delete(task)
                                                } label: {
                                                    Image(systemName: "trash.fill")
                                                        .bold()
                                                        .foregroundStyle(
                                                            Color(hex: "#DDD7E5")
                                                        )
                                                        
                                                }
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        
                                        
                                        HStack{
                                            ZStack{
                         
                                                Capsule()
                                                    .frame(width: 150, height: 25)
                                                    .foregroundStyle(
                                                        Color(hex: "#DDD7E5")
                                                    )
                                                
                                                
                                                Text("Due at 3:00PM")
                                                    .fontWeight(.heavy)
                                                    .bold()
                                                    
                                                    .foregroundStyle(
                                                        Color(hex: "#504E76")
                                                        )
                                                
  
                                            }
                                            
                                            
                                            
                                            Spacer()
                                            
                                            Text("03/21")
                                            
                                            
                                        }
                                        
                                        Spacer()
                            
                                        VStack(spacing: 10){
                                            Text(task.tasks)
                                            
                                        }
                                        
                                        Spacer()
                                        
                                        HStack{
                                            
                                            
                                            ZStack{
                                                
                                                Capsule()
                                                    .frame(width: 100, height: 25)
                                                    .foregroundStyle(
                                                        Color(hex: "#504E76")
                                                    )
                                                
                                                Text(task.status)
                                                    .font(.headline)
                                                    .fontWeight(.heavy)
                                                    .bold()
                                                    
                                                    .foregroundStyle(
                                                        Color(hex: "#DDD7E5")
                                                        
                                                    )
                                               
                                            }
                                            
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
