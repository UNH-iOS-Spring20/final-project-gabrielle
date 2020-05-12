//
//  Shuffle.swift
//  Bookmark
//
//  Created by Gabrielle Good on 5/10/20.
//  Copyright © 2020 gabrielle. All rights reserved.
//

import SwiftUI

struct Shuffle: View {
    @ObservedObject private var books = FirebaseCollection<Book>(query: booksCollectionRef)
    @State var shuffle = ""
    var body: some View {
        NavigationView{
            ZStack{
                Image("stackedbooks")
                    .resizable()
                    .opacity(0.25)
            VStack{
                Button(action: shuffleMe){
                    Text("What should I read next?")
                        .background(Color.gray)
                        .frame(width: 100, height: 100)
                        .cornerRadius(45)
                        .padding(.all, 20)
                }.buttonStyle(PlainButtonStyle())
                Text(shuffle)
                    .fontWeight(.semibold)
            }
        
        }
       
    
    }
}
    
           func shuffleMe(){
                                    shuffle = shuffleArray.randomElement()!
                                }
}


struct Shuffle_Previews: PreviewProvider {
    static var previews: some View {
        Shuffle()
    }
}

