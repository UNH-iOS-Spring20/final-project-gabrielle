//
//  UpNextView.swift
//  Bookmark
//
//  Created by Gabrielle Good on 5/6/20.
//  Copyright © 2020 gabrielle. All rights reserved.
//

import SwiftUI

struct UpNextView: View {
    @ObservedObject private var current = FirebaseCollection<UpNext>(query: UPList)
    @State var title = ""
    @State var author = ""
    @State var subgenre = ""
    
    var textBar: some View{
        VStack{
            TextField("Enter a new book title", text: self.$title)
            TextField("Enter a new author", text: self.$author)
            TextField("Enter a new subgenre", text: self.$subgenre)
            HStack{
                Button(action: self.AddItem,label:{
                    (Text("Add New Book"))
                })
                Button(action: clear, label:{
                    Text("Clear")
                })
            }
        }
    }
    
    func clear(){
        title = ""
        author = ""
        subgenre = ""
    }
    func AddItem(){
        if title != ""{
            print("Adding new book back to Currently Reading")
            if !title.isEmpty && !author.isEmpty && !subgenre.isEmpty{
                let data = ["title": title, "author": author, "subgenre": subgenre]
                UPList.addDocument(data:data)
            }
        }
    }
    var body: some View {
        NavigationView {
            VStack{
                textBar.padding()
                List {
                    ForEach(current.items){cr in
                        HStack{
                        Text(cr.title + " |")
                        Text(cr.author + " |")
                        Text(cr.subgenre)
                        }
                    }.onDelete(perform: deleteBook)
                }
            }.navigationBarTitle("Up Next")
        }

    }
    func deleteBook(at offsets: IndexSet) {
        let index = offsets.first!
        print("Deleting from Up Next: \(current.items[index])")
        let id = current.items[index].id
        UPList.document(id).delete() { error in
            if let error = error {
                print("Error removing document: \(error)")
            } else {
                print("Document successfully removed!")
            }
        }
    }
}
    
    struct UpNextView_Previews: PreviewProvider {
        static var previews: some View {
            UpNextView()
        }
}

