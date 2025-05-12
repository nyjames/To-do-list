//
//  Designs.swift
//  To-do-list
//
//  Created by Nya James on 5/9/25.
//

import SwiftUI

struct Designs: View {
    var body: some View {
        
        ZStack {
            
            Capsule()
                
                .frame(width: 200, height: 40)
                
                .foregroundStyle(
                    Color(hex: "#504E76")
                )
            
            
            
            Text("category.title")
            
                .font(.caption)
                .fontWeight(.heavy)
            
                .foregroundStyle(
                    Color(hex: "#F0E6E4")
                )
            
            Circle()
                .frame(width: 30)
                .offset(x: 90, y: 11)
            
                .foregroundStyle(
                    Color(.white)
                )
            
            Circle()
                .frame(width: 25)
                .offset(x: 89.7, y: 11)
            
                .foregroundStyle(
                    Color(hex: "#504E76")
                )
            
            Circle()
                .frame(width: 20)
                .offset(x: 90, y: 11)
            
                .foregroundStyle(
                    Color(hex: "#F0E6E4")
                )
                .overlay {
                    Text("1")
                        .foregroundStyle(
                            Color(hex: "#504E76")
                        )
                        .font(.caption)
                        .bold()
                        .offset(x: 90, y: 11)
                }

                
            
        }
    }
}

#Preview {
    Designs()
}
