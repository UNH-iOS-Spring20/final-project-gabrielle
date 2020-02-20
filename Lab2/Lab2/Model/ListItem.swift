//
//  ListItem.swift
//  Lab2
//
//  Created by Gabrielle Good
//  Copyright © 2020 gabrielle. All rights reserved.
//
class ListItem{
    var title: String
    var author: String
    
    init?(title: String, author: String){
        if title.isEmpty || author.isEmpty{
            return nil
        }
        self.title = title
        self.author = author
    }
}
