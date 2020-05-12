//
//  Questions.swift
//  Bookmark
//
//  Created by Gabrielle Good on 5/5/20.
//  Copyright © 2020 gabrielle. All rights reserved.
//

import Foundation


struct Answer: Identifiable, Hashable{
    var id: Int
    var choice: String
    var type: Category.RawValue
    
    init(id: Int, choice: String, type: Category){
        self.id = id
        self.choice = choice
        self.type = type.rawValue
    }
}

struct Quiz: Identifiable, Hashable{
    var id: Int
    var text: String
    var answers: [Answer]
    
    init(id: Int, text: String, answers: [Answer]){
        self.id = id
        self.text = text
        self.answers = answers
    }
}
 
    
let questionArray = [
    Quiz(id: 1, text: "What type of tv show do you enjoy?",
                         answers: [
                        Answer(id: 1, choice: "Medical or family dramas", type: .drama),
                        Answer(id: 2, choice: "Legal and procedural dramas", type: .drama),
                        Answer(id: 3, choice: "Documentaries", type: .biography),
                        Answer(id: 4, choice: "True crime", type: .truecrime),
                        Answer(id: 5, choice: "Romantic comedies", type: .romance)
            ]),
Quiz(id: 2, text: "What do you want to feel when reading a book?",
                         answers: [
                        Answer(id: 1, choice: "Edge of my seat, nail biter", type: .thriller),
                        Answer(id: 2, choice: "Heart a-flutter, swooning", type: .romance),
                        Answer(id: 3, choice: "I want to see the world from a different perspective", type: .drama),
                        Answer(id: 4, choice: "Inspired", type: .biography),
                        Answer(id: 5, choice: "Dystopian or science-fiction. Take me to another world", type: .dystopian)
            ]),
                    Quiz(id: 3, text: "What's your favorite genre?",
                      answers: [
                        Answer(id: 1, choice: "Horror or Psychological Thriller", type: .thriller),
                        Answer(id: 2, choice: "Science Fiction or Dystopian", type: .dystopian),
                        Answer(id: 3, choice: "Romance", type: .romance),
                        Answer(id: 4, choice: "Historical or True Crime", type: .truecrime),
                        Answer(id: 5, choice: "Biography or Self-Improvement", type: .biography)
            ]),
                    Quiz(id: 4, text: "What type of book are you in the mood for?",
                      answers: [
                        Answer(id: 1, choice: "Light-hearted", type: .romance),
                        Answer(id: 2, choice: "Heavy, family drama", type: .drama),
                        Answer(id: 3, choice: "Something to help better myself", type: .improvement),
                        Answer(id: 4, choice: "Thought-provoking", type: .biography),
                        Answer(id: 5, choice: "Fictional world with commentary on modern society", type: .dystopian)
            ]),
                    Quiz(id: 5, text: "Pick a movie",
                      answers: [
                        Answer(id: 1, choice: "Lord of the Rings", type: .dystopian),
                        Answer(id: 2, choice: "10 Things I Hate About You", type: .romance),
                        Answer(id: 3, choice: "Seven", type: .thriller),
                        Answer(id: 4, choice: "Zodiac", type: .truecrime),
                        Answer(id: 5, choice: "The Godfather", type: .drama)
            ])]
    


//enum for genre types

enum Category: String{
    
    case drama, thriller, romance, biography, improvement, dystopian, truecrime
  
}


