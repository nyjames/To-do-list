//
//  NewTaskView.swift
//  To-do-list
//
//  Created by Nya James on 3/14/25.
//

import SwiftUI



struct Quote: Codable, Identifiable {
    
    let id: UUID = UUID()

    let q: String
    let a: String
}

struct QuoteOfTheDay: View {
    
    @State private var quotes: [Quote] = []
    
    
    var body: some View {

            List(quotes) { item in
                
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
                            
                            
                            
                            Text(item.q)
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
                                
                                Text(item.a)
                                
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
                
            }.ignoresSafeArea()
            
            .task {
                do {
                    
                    try await loadQuote()
                    
                } catch {
                    
                    print(error)
                    
                }
            }
        
        
    }
    
    func loadQuote() async throws {
        
        let url = URL(string: "https://zenquotes.io/api/quotes")!
        let request = URLRequest(url: url)
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let quotes = try JSONDecoder().decode([Quote].self, from: data)
        
        self.quotes = quotes
    }
}

#Preview {
    QuoteOfTheDay()
}
