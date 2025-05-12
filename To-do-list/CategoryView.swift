//
//  CategoryView.swift
//  To-do-list
//
//  Created by Nya James on 5/2/25.
//

import SwiftUI
import SwiftData

@Model
class Category {
    
    @Attribute var id: UUID

    var title: String
    var items: [TaskItems]?
    
    init(id: UUID = UUID(), title: String = "") {
        self.id = id
        self.title = title
        
    }
}

func createSampleCategories(context: ModelContext) {
    
    let category1 = Category(title: "Gym")
    let category2 = Category(title: "Study")
    let category3 = Category(title: "Meal")
    
    
    context.insert(category1)
    context.insert(category2)
    context.insert(category3)
    
    
}


struct CreateCategoryView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) var context
    
    @Query private var categories: [Category]
    
    @State private var title: String = ""
    
    var body: some View {
        List {
            Section("Category Title") {
                
                TextField("Name", text: $title)
                
                Button("Add Category") {
                    let category = Category(title: title)
                    context.insert(category)
                    category.items = []
                    
                }
            }
            
            
        }
        
            ForEach(categories) { category in
                Text(category.title)
                
                ZStack{
                    
                    Circle()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(
                            Color(hex: "#504E76"))
                    
                    
                    Button {
                        
                        context.delete(category)
                        
                        
                    } label: {
                        Image(systemName: "trash.fill")
                            .bold()
                            .foregroundStyle(
                                Color(hex: "#DDD7E5")
                            )
                        
                    }
                }
        }
    }
        
}

        
#Preview {
    
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Category.self, configurations: config)
        let context = ModelContext(container)
        createSampleCategories(context: context)
        return CreateCategoryView()
            .modelContainer(container)
    } catch {
        return Text("Preview Failed: \(error.localizedDescription)")
    }
    
}
