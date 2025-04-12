//
//  ScrollViewOfTasks.swift
//  To-do-list
//
//  Created by Nya James on 4/11/25.
//

import SwiftUI
import SwiftData


struct ScrollViewOfTasks: View {
    
    
    @State private var showCreate = false
    @Query private var items: [TaskItems]
    
    var body: some View {
        
        ZStack{
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            
            
            VStack{
                
                
                Circle()
                    .frame(width: 405, height: 500)
                    .offset(x: 0, y: -250)
                    .foregroundStyle(
                        Color(hex: "#DDD7E5")
                    )
                
                
                
                
                
                Spacer()
                
            }
            VStack {
                // Hello, Name!
                
                HStack{
                    
                    Text("Hello Nya, Welcome Back!")
                        .font(.caption)
                        .bold()
                        .padding()
                    
                    Spacer()
                    
                    ZStack{
                        
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(
                                Color(hex: "#ffffff")
                            )
                        
                        
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding()
                        
                    }
                    
                    
                    
                    
                    
                    
                }.padding()
                    .foregroundStyle(
                        Color(hex: "#504E76")
                    )
                // quote of the day
                ZStack{
                    
                    Rectangle()
                    
                    Color(.white)
                    
                    
                    VStack{
                        
                        Text("Quote of the day")
                            .font(.caption)
                            .bold()
                        
                        HStack {
                            
                            
                            
                            Text("Hello, Name! You deserve to have your life together. Act like it!")
                                .font(.caption)
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
                
                // tasks stack
                
                
                NavigationStack {
                    
                    
                    
                    List {
                        ForEach(items) { item in
                            
                            ZStack {
                                Rectangle()
                                Color(.white)
                                
                                VStack {
                                    
                                    HStack {
                                        // title
                                        Text(item.title)
                                            .font(.caption)
                                            
                                        
                                        
                                        Spacer()
                                        
                                        ZStack{
                                            
                                            Circle()
                                                .frame(width: 25, height: 25)
                                                .foregroundStyle(
                                                    Color(hex: "#504E76"))
                                            
                                            
                                            Button(action: {
                                                //
                                                
                                            }, label: {
                                                Image(systemName: "trash.fill")
                                                    .bold()
                                                    .foregroundStyle(
                                                        Color(hex: "#DDD7E5")
                                                    )
                                                
                                            })
                                        }
                                        
                                    }
                                    .padding()
                                    HStack {
                                        
                                        Text(item.dateDue.formatted(date: .abbreviated, time: .omitted))
                                            .font(.caption)
                                        
                                        Spacer()
                                        
                                        Text(item.dateDue.formatted(date: .omitted, time: .shortened))
                                            .font(.caption)
                                        
                                        
                                        
                                        
                                    }
                                    .padding()
                                    
                                    VStack{
                                        
                                        Text(item.descr)
                                            .font(.caption)
                                    }
                                    
                                    .padding()
                                    
                                    HStack{
                                        Text(item.status)
                                            .font(.caption)
                                    }
                                    .padding()
                                }
                            }
                        }
                    }
                    .listStyle(.plain)
                    
                    
                    
                    
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            Text("Tasks to Complete")
                                .font(.caption)
                                .bold()
                                .foregroundStyle(
                                    Color(hex: "#504E76")
                                )
                            
                        }
                        
                        
                        ToolbarItem {
                            
                            ZStack{
                                
                                Circle()
                                    .frame(width: 25, height: 25)
                                    .foregroundStyle(
                                        Color(hex: "#504E76"))
                                    .offset(x:-15, y: 0)
                                
                                Button(action: {
                                    showCreate.toggle()
                                    
                                }, label: {
                                    Image(systemName: "plus")
                                        .bold()
                                        .foregroundStyle(
                                            Color(hex: "#DDD7E5")
                                        )
                                        .offset(x:-19, y: 0)
                                })
                            }
                        }
                    }
                    
                    .sheet(isPresented: $showCreate,
                           content: {
                        NavigationStack {
                            CreateTasksView()
                            
                        }
                        .presentationDetents([.medium])
                    })
                }.background {
                    Color(.blue)
                }
            }
                
                
            }
            
        }
            
            
        }



#Preview {
    ScrollViewOfTasks()
}
