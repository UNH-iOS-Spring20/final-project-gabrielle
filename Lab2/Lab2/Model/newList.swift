//
//  newList.swift
//  Lab2
//
//  Created by Gabrielle Good on 2/20/20.
//  Copyright © 2020 gabrielle. All rights reserved.
//

class newList{
    var books = [ListItem]()
    
    func addItem(entry: ListItem){
        books.append(entry)
    }
    
    func returnCount() -> Int{
        var count: Int = 0
        for _ in books{
            count += 1
        }
        return count
    }
}
