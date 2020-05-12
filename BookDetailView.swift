//
//  BookDetailView.swift
//  Bookmark
//
//  Created by Gabrielle Good on 5/7/20.
//  Copyright © 2020 gabrielle. All rights reserved.
//

import SwiftUI

struct BookDetailView: View {
    let book: Book

    var body: some View {
        ZStack{
            Image("bookshelf")
            .resizable()
                .opacity(0.25)
        VStack(alignment: .leading){
            Text(book.title)
                .font(.largeTitle)
            Text(book.author)
                .font(.title)
            Divider()
            HStack{
                Text(book.genre + " - ")
                Text(book.subgenre)
            }
            Divider()
           HStack{
                Text(book.description)
                .lineLimit(25)
        
        }
    }
        }
}
}
        
struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book:
            Book(id: "8392ewgsdhfjvghbj",
                 title: "Daring Greatly",
            author: "Brene Brown",
            description: "1234",
            genre: "Fiction",
            subgenre: "Self-improvement")
        )
        }
    }
