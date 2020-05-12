//
//  AddBook.swift
//  Bookmark
//
//  Created by Gabrielle Good on 5/1/20.
//  Copyright © 2020 gabrielle. All rights reserved.
//

import SwiftUI

struct AddBook: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var title = ""
    @State private var author = ""
    @State private var description = ""
    @State private var genre = ""
    @State private var subgenre = ""
    
    var body: some View {
        Group{
            VStack(spacing: 25){
                HStack{
                    Text("Title")
                    //.frame(width: 150)
                    TextField("Enter", text: $title)
                }
                Divider()
                HStack{
                    Text("Author")
                    //.frame(width: 150)
                    TextField("Enter", text: $author)
                }
                Divider()
                HStack{
                    Text("Description")
                    //.frame(width:150)
                    TextField("Enter", text: $description)
                }
                Divider()
                HStack{
                    Text("Genre")
                   // .frame(width: 150)
                    TextField("Enter", text: $genre)
                }
                Divider()
                HStack{
                    Text("Sub-Genre")
                    //.frame(width: 150)
                    TextField("Enter", text: $subgenre)
                    
                }
                Button(action: {
                    self.addBook()
                }) {
                    Text("Add New Book")
                    .padding()
                    .padding()
                }
            }
        }
    .padding()
    }
        
        func addBook(){
            print("Adding new book")
            if !title.isEmpty && !author.isEmpty && !description.isEmpty && !genre.isEmpty && !subgenre.isEmpty{
                let data = ["title": title, "author": author, "description": description, "genre": genre, "subgenre": subgenre]
                booksCollectionRef.addDocument(data:data)
                dismiss()
            }
        }
    
    func dismiss(){
        presentationMode.wrappedValue.dismiss()
    }
    }


struct AddBook_Previews: PreviewProvider {
    static var previews: some View {
        AddBook()
    }
}
