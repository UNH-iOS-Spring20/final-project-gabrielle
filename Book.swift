//
//  Book.swift
//  Bookmark
//
//  Created by Gabrielle Good on 5/1/20.
//  Copyright © 2020 gabrielle. All rights reserved.
//


import FirebaseFirestore

struct Book: Identifiable, Equatable{
    var id: String
    var title: String
    var author: String
    var description: String
    var genre: String
    var subgenre: String
}


extension Book: DocumentSerializable{
    init?(id: String, dictionary: [String: Any]) {
        guard let title = dictionary["title"] as? String,
            let author = dictionary["author"] as? String,
            let description = dictionary["description"] as? String,
            let genre = dictionary["genre"] as? String,
            let subgenre = dictionary["subgenre"] as? String
        
        else {
            return nil
        }
        
        self.init(id: id,
                  title: title,
                  author: author,
                  description: description,
                  genre: genre,
                  subgenre: subgenre)
        
    }
}
