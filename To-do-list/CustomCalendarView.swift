//
//  SwiftUIView.swift
//  To-do-list
//
//  Created by Nya James on 4/25/25.
//

import SwiftUI

struct CalendarView: View {
    @State private var color: Color = .blue
    @State private var date = Date.now
    let daysOfWeek = Date.capitalizedFirstLettersOfWeekdays
    let columns = Array(repeating: GridItem(.flexible()), count: 7)
    @State private var days: [Date] = []
    
    var body: some View {
        
        
        ZStack {
            
            LabeledContent("Date") {
                DatePicker(
                    
                    "",
                    selection: $date,
                    displayedComponents: .date
                    
                )
                
            }.padding()
                .font(.title2)
                .bold()
                .padding()
            
                .foregroundStyle(
                    Color(hex: "#F0E6E4")
                )
            
                .background(
                    Capsule()
                        .frame(width: 75, height: 30)
                        .offset(x: -145, y: 0)
                        .foregroundStyle(
                            Color(hex: "#504E76")
                        )
                )
                
        }
        
        ZStack {
            
            Rectangle()
            
            Color(.white)
            
            
            VStack {
                

                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(
                            Color(hex: "#DDD7E5")
                        )
                    
                    HStack {
                        ForEach(daysOfWeek.indices, id: \.self) { index in
                            Spacer()
                            
                            Text(daysOfWeek[index])
                            
                                .foregroundStyle(
                                    Color(hex: "#504E76")
                                )
                                .font(.subheadline)
                                .fontWeight(.heavy)
                                .frame(maxWidth: .infinity)
                            Spacer()
                            
                        }
                    }
            
                    
                    
                }.frame(width: 370, height: 40)
                
                Spacer()
                
                LazyVGrid(columns: columns) {
                    ForEach(days, id: \.self) { day in
                        if day.monthInt != date.monthInt {
                            Text("")
                        } else {
                            Text(day.formatted(.dateTime.day()))
                                .fontWeight(.bold)
                                .foregroundStyle(Color(hex: "#504E76"))
                                .frame(maxWidth: .infinity, minHeight: 40)
                                .background(
                                    Circle()
                                        .foregroundStyle(
                                            Date.now.startOfDay == day.startOfDay
                                            ? Color(hex: "#F0E6E4")
                                            :  Color.clear
                                        )
                                )
                        }
                    }
                }
                
                Spacer()
            }.padding(10)
            .onAppear {
                days = date.calendarDisplayDays
            }
            .onChange(of: date) {
                days = date.calendarDisplayDays
            }
            
        }.frame(width: 380, height: 355)
            .cornerRadius(10)
            .shadow(radius: 6, x: 5, y: 5)
           
            
    }
    
}

#Preview {
    CalendarView()
}
