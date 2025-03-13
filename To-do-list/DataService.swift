//
//  DataService.swift
//  To-do-list
//
//  Created by Nya James on 3/13/25.
//

import Foundation

struct DataService {
    
    func getData() -> [todolistitems] {
        
        return [
            
            todolistitems(
                title: "Walk Dog",
                tasks: "Samantha Reminded me to make sure to walk the dog tonight.",
                status: true
            ),
            
            todolistitems(
                title: "Create Study Guide",
                tasks: "Create Study Guide for Math test for Mr. Arnold's Class.",
                status: true
            ),
            
            todolistitems(
                title: "Cook Family Dinner",
                tasks: "Missing chicken and rice. tell ryan to grab on the way to the store.",
                status: true
            ),
            
            todolistitems(
                title: "Go to Grocery Store",
                tasks: "Grab milk, eggs, apple sauce, and carrots from Aldi's. Look into downstair's cabinet for coupons on cereal and waffles.",
                status: false
            ),
            
            
            todolistitems(
                title: "Walk Dog",
                tasks: "Samantha Reminded me to make sure to walk the dog tonight.",
                status: true
            ),
            
            todolistitems(
                title: "Create Study Guide",
                tasks: "Create Study Guide for Math test for Mr. Arnold's Class.",
                status: true
            ),
            
            todolistitems(
                title: "Cook Family Dinner",
                tasks: "Missing chicken and rice. tell ryan to grab on the way to the store.",
                status: true
            ),
            
            todolistitems(
                title: "Go to Grocery Store",
                tasks: "Grab milk, eggs, apple sauce, and carrots from Aldi's. Look into downstair's cabinet for coupons on cereal and waffles.",
                status: false
            ),
        
            
        ]
        
        
    }

}



