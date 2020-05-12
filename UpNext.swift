//
//  UpNext.swift
//  Bookmark
//
//  Created by Gabrielle Good on 5/6/20.
//  Copyright © 2020 gabrielle. All rights reserved.
//

import Foundation
struct UpNext: Identifiable, Equatable{
    var id: String
    var title: String
    var author: String
    var subgenre: String
}


extension UpNext: DocumentSerializable{
    init?(id: String, dictionary: [String: Any]) {
        guard let title = dictionary["title"] as? String,
            let author = dictionary["author"] as? String,
        let subgenre = dictionary["subgenre"] as? String
    else {
        return nil
    }
    
    self.init(id: id,
              title: title,
              author: author,
              subgenre: subgenre)
    
    }
}
