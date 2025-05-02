//
//  ScrollViewOfTasks.swift
//  To-do-list
//
//  Created by Nya James on 4/11/25.
//

import SwiftUI
import SwiftData


struct MainTasksView: View {
    
    
    @State private var showCreate = false
    @State private var edit: TaskItems?
    @Query private var items: [TaskItems]
    @State private var date = Date.now
    @Environment(\.modelContext) var context
  
    
    var body: some View {
        
        NavigationStack {
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
                    
                    ScrollView {
                    
                    
                    VStack {
                        // Hello, Name!
                        
                        HStack{
                            
                            Text("Hello Nya, Welcome Back!")
                                .font(.title)
                                .bold()
                                
                            
                            Spacer()
                            
                            ZStack{
                                
                                Circle()
                                    .frame(width: 55, height: 55)
                                    .foregroundStyle(
                                        Color(hex: "#ffffff")
                                    )
                                
                                
                                Image(systemName: "person.crop.circle.fill")
                                    .resizable()
                                    .frame(width: 45, height: 45)
                                    .padding()
                                
                            }
                            
                            
                    
                            
                        }.padding()
                            .foregroundStyle(
                                Color(hex: "#504E76")
                            )
                        
                        // Calendar View
                        
                       
                        
                        
                        CalendarView()
                            .padding()
                            
                    }
                        
                        
                        
                        // folders title
                        
                        Spacer()
                        
                       
                        
                        HStack{
                            Text("Categories")
                                .font(.title)
                                .bold()
                                .foregroundStyle(
                                    Color(hex: "#504E76")
                                )
                            
                            Spacer()
                            
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
                                        .offset(x:-15, y: 0)
                                })
                            }
                            
                        }.padding()
                        
                        // horizontal stack of folders
                        

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                
                                VStack{
                                    
                                    Capsule()
                                        .frame(width: 75, height: 30)

                                        .foregroundStyle(
                                            Color(hex: "#504E76")
                                        )

                                    
                                }.padding()
                                    .border(.black)
                                
                                VStack{
                                    
                                    Capsule()
                                        .frame(width: 75, height: 30)

                                        .foregroundStyle(
                                            Color(hex: "#504E76")
                                        )

                                    
                                }.padding()
                                    .border(.black)
                                
                                VStack{
                                    
                                    Capsule()
                                        .frame(width: 75, height: 30)

                                        .foregroundStyle(
                                            Color(hex: "#504E76")
                                        )

                                    
                                }.padding()
                                    .border(.black)
                                
                                VStack{
                                    
                                    Capsule()
                                        .frame(width: 75, height: 30)

                                        .foregroundStyle(
                                            Color(hex: "#504E76")
                                        )

                                    
                                }.padding()
                                    .border(.black)
                            }
                                
                                    
                                
                            }
                                

                        
                        // tasks stack
                        
                        HStack{
                            Text("Tasks to Complete")
                                .font(.title)
                                .bold()
                                .foregroundStyle(
                                    Color(hex: "#504E76")
                                )
                            
                            Spacer()
                            
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
                                        .offset(x:-15, y: 0)
                                })
                            }
                            
                        }.padding()
                        
                        
                        
                        
                        
                        
                        
                        
                        
                            
                        let sorteditems = items.sorted {$1.dateDue > $0.dateDue}
                            
                            LazyVStack {
                                ForEach(sorteditems) { item in
                                    
                                    ZStack {
                                        Rectangle()
                                        Color(.white)
                                        
                                        VStack {
                                            
                                            HStack {
                                                // title
                                                Text(item.title)
                                                    .font(.headline)
                                                    .fontWeight(.heavy)
                                                
                                                    .foregroundStyle(
                                                        Color(hex: "#504E76")
                                                    )
                                                
                                                
                                                
                                                
                                                
                                                Spacer()
                                                
                                                ZStack{
                                                    
                                                    Circle()
                                                        .frame(width: 25, height: 25)
                                                        .foregroundStyle(
                                                            Color(hex: "#504E76"))
                                                    
                                                    
                                                    Button {
                                                        
                                                       edit = item
                                                        
                                                        
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
                                                        .frame(width: 25, height: 25)
                                                        .foregroundStyle(
                                                            Color(hex: "#504E76"))
                                                    
                                                    
                                                    Button {
                                                        
                                                        context.delete(item)
                                                        
                                                        
                                                    } label: {
                                                        Image(systemName: "trash.fill")
                                                            .bold()
                                                            .foregroundStyle(
                                                                Color(hex: "#DDD7E5")
                                                            )
                                                        
                                                    }
                                                }
                                            }
                                            .padding()
                                            
                                            HStack {
                                                
                                                ZStack{
                                                    
                                                    Capsule()
                                                        .frame(width: 125, height: 25)
                                                        .foregroundStyle(
                                                            Color(hex: "#DDD7E5")
                                                        )
                                                    
                                                    Text("Due at:  \(item.dateDue.formatted(date: .omitted, time: .shortened))")
                                                        .font(.caption)
                                                        .fontWeight(.heavy)
                                                    
                                                        .foregroundStyle(
                                                            Color(hex: "#504E76")
                                                        )
                                                }
                                                
                                                Spacer()
                                                
                                                Text(item.dateDue.formatted(date: .abbreviated, time: .omitted))
                                                    .font(.caption)
                                                    .fontWeight(.heavy)
                                                
                                                    .foregroundStyle(
                                                        Color(hex: "#504E76")
                                                    )
                                                    
                                            }
                                            .padding(.horizontal)
                                            
                                            Spacer()
                                            
                                            VStack{
                                                
                                                Text(item.descr)
                                                    .font(.subheadline)
                                                
                                                    .foregroundStyle(
                                                        Color(hex: "#504E76")
                                                    )
                                                
                                                    .lineLimit(nil)
                                                    .fixedSize(horizontal: false, vertical: true)
                                                
                                                
                                                
                                            }
                                            .padding()
                                            
                                            Spacer()
                                            
                                            
                                            HStack{
                                                
                                                ZStack{
                                                    
                                                    Capsule()
                                                        .frame(width: 100, height: 25)
                                                        .foregroundStyle(
                                                            Color(hex: "#504E76")
                                                        )
                                                    
                                                    Text(item.status)
                                                        .font(.caption)
                                                        .fontWeight(.heavy)
                                                    
                                                        .foregroundStyle(
                                                            Color(hex: "#DDD7E5")
                                                        )
                                                }
                                                
                                                Spacer()
                                                Spacer()

           
                                                
                                                if item.dateDue < date {
                                                    
                                                    
                                                    ZStack{
                                                        
                                                        Capsule()
                                                            .frame(width: 80, height: 25)
                                                            .foregroundStyle(
                                                                Color(hex: "#DDD7E5")
                                                            )
                                                       
                                                            Text("Over due")
                                                                .font(.caption)
                                                                .fontWeight(.heavy)
                                                            
                                                                .foregroundStyle(
                                                                    Color(hex: "#504E76")
                                                                )
                                                        }
                                                                            
                                                }
                                                
                                               
                                            }
                                            .padding()
                                        }
                                        
                                    }
                                    
                                    .frame(width: 380)
                                    .cornerRadius(15)
                                    .padding()
                                    
                                    .shadow(radius: 6, x: 5, y: 5)
                                    
                                    
                                }
                                .listRowBackground(Color.clear)
                                
                                
                            }
                            .listStyle(.plain)
                            
                            
                            
                        
                    }
                    
                }
                
                .sheet(isPresented: $showCreate,
                       content: {
                    NavigationStack {
                        CreateTasksView()
                        
                        
                    }
                    .presentationDetents([.large])
                    
                    
                })
                .sheet(item: $edit) {
                    edit = nil
                } content: { item in
                    UpdateTaskView(item: item)
                }
                
            }
        }
    }
                
            
        




#Preview {
    MainTasksView()
}
