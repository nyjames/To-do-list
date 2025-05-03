//
//  NewTaskView.swift
//  To-do-list
//
//  Created by Nya James on 3/14/25.
//

import SwiftUI




struct QuoteOfTheDay: View {
    
    var body: some View {

                ZStack{
                    
                    
                    
                    Rectangle()
                    
                    Color(.white)
                    
                    
                    VStack{
                        
                        Spacer()
                        
                        ZStack{
                            
                            Capsule()
                                .foregroundStyle(
                                    Color(hex: "#DDD7E5")
                                )
                            
                            Text("Quote of the Day")
                            
                                .font(.caption)
                                .fontWeight(.heavy)
                            
                                .foregroundStyle(
                                    Color(hex: "#504E76")
                                )
                        } .frame(width: 150, height: 25)
                        
                        Spacer()
                        
                        HStack {
                            
                            Spacer()

                                .font(.caption)
                                .fontWeight(.heavy)
                                .bold()
                            
                            Spacer()
                            
                        }.padding()
                        
                        HStack {
                            
                            ZStack{
                                
                                Capsule()
                                    .foregroundStyle(
                                        Color(hex: "#504E76")
                                    )
                                
                                Text("hello")
                                
                                    .font(.caption)
                                    .fontWeight(.heavy)
                                
                                    .foregroundStyle(
                                        Color(hex:  "#DDD7E5")
                                    )
                            } .frame(height: 25)
                            
                            
                        }.padding()
                        
                        
                    }.foregroundStyle(
                        Color(hex: "#504E76")
                    )
                    
                    
                    
                    
                    
                }.frame(width: 375, height: 200)
                    .cornerRadius(15)
                    .padding()
                    .shadow(radius: 6, x: 5, y: 5)
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                
            }

        
        
    }
    

#Preview {
    QuoteOfTheDay()
}
