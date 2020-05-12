//
//  Tabs.swift
//  Bookmark
//
//  Created by Gabrielle Good on 5/6/20.
//  Copyright © 2020 gabrielle. All rights reserved.
//

import SwiftUI

struct Tabs: View {

    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
            }
            BookView()
                .tabItem{
                    Image(systemName: "book.circle.fill")
                    Text("All Books")
            }
            Shuffle()
            .tabItem{
                    Image(systemName: "shuffle")
                    Text("Shuffle")
            }
            AddBook()
                .tabItem{
                    Image(systemName: "plus.app")
                    Text("Add a Book")
            }
        }
    }
}


struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}

