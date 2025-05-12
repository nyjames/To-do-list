//
//  ItemByCategoryView.swift
//  To-do-list
//
//  Created by Nya James on 5/11/25.
//

import SwiftUI
import SwiftData

struct ItemByCategoryView: View {
    
    let primary = Color.primaryColor
    let secondary = Color.secondaryColor
    let tertiary = Color.tertiaryColor
    
    
    @State private var showCreate = false
    @State private var showCategory = false
    @State private var edit: TaskItems?
    @Query private var items: [TaskItems]
    @State private var date = Date.now
    
    @Query private var categories: [Category]
    

    
    @Environment(\.modelContext) var context
    
    
    
    var body: some View {
        
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
                    showCategory.toggle()
                    
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
           
            LazyHStack(spacing: 10.0) {
                
                    ForEach(categories) { category in
                        
                        
                        
                        
                        VStack {
                            
                            ZStack(alignment: .center) {
                                
                                
                                
                                Capsule()
                                
                                    .fill(Color(hex: "#504E76"))
                                
                                    .frame(height: 50)
                                
                                    .overlay(
                                        Capsule()
                                            .stroke(Color.white, lineWidth: 3)
                                    )
                                
                                
                                
                                
                                Text(category.title)
                                
                                    .font(.subheadline)
                                    .fontWeight(.heavy)
                                    .padding()
                                
                                    .foregroundStyle(
                                        Color(hex: "#F0E6E4")
                                    )
                                
                                
                                
                            }
                        }
                        
                                
                            }
                        
                        
                        
                    }
                
                
                
                
            }
        }

    }
    


