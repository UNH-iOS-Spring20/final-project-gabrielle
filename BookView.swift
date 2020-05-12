//
//  BookView.swift
//  Bookmark
//
//  Created by Gabrielle Good on 5/6/20.
//  Copyright © 2020 gabrielle. All rights reserved.
//

import SwiftUI

struct BookView: View {
    @ObservedObject private var books = FirebaseCollection<Book>(query: booksCollectionRef)
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: AddBook()){
                    Text("Don't see a book you like? Add it here.")
                }
                List{
                    ForEach(books.items){book in
                        NavigationLink(destination:BookDetailView(book: book)){
                            Text(book.title)
                        }
                    }
                    .navigationBarTitle(Text("Books"))
                }
            }
            AddBook()
        }
    }
}



struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
