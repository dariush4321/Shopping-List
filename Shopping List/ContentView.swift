//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    let imageName: String
    
    let itemName: String
    
    let quantity: Int
    
    init(imageName: String, itemName: String, quantity: Int) {
        
        self.imageName = imageName
        
        self.itemName = itemName
        
        self.quantity = quantity
    }
    
    
}

struct ContentView: View {
    
    
    var list = [
        
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12)
    
    ]
    
    
    var list2 = [
        
        Items(imageName: "banana", itemName: "Peaches", quantity: 6),
        Items(imageName: "apple", itemName: "Oranges", quantity: 8),
        Items(imageName: "eggs", itemName: "Greens", quantity: 1)
    
    ]
    var list3 = [
        
        Items(imageName: "banana", itemName: "Broccoli", quantity: 6),
        Items(imageName: "apple", itemName: "Carrots", quantity: 4),
        Items(imageName: "eggs", itemName: "Red", quantity: 1)
    
    ]
    
    var body: some View {
        NavigationView {
   
        List {
            Section(header: Text("Fruits")){
            ForEach(list) { i in
            CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity).navigationTitle("Shopping List")
            }
            }
            Section(header: Text("Veggies")){
            ForEach(list2) { i in
                CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity).navigationTitle("Shopping List")
                }
            }
            Section(header: Text("Other")){
                ForEach(list3) { i in
                    CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity).navigationTitle("Shopping List")
                    }
            }
        
        }
            
    }
}
}
