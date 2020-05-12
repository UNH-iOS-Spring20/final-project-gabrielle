//
//  ContentView.swift
//  Bookmark
//
//  Created by Gabrielle Good on 2/29/20.
//  Copyright © 2020 gabrielle. All rights reserved.
//

import SwiftUI
import FirebaseFirestore
import UIKit

let booksCollectionRef = Firestore.firestore().collection("books")
let CRList = Firestore.firestore().collection("currentlyreading")
let UPList = Firestore.firestore().collection("upnext")
let PRList = Firestore.firestore().collection("pastreads")


struct ContentView: View{
    @ObservedObject private var books = FirebaseCollection<Book>(query: booksCollectionRef)
        var body: some View {
            NavigationView{
                ZStack(alignment: .top){
                    Image("blackandwhite")
                        .resizable()
                        .edgesIgnoringSafeArea(.bottom)
                        .opacity(0.25)
                VStack(spacing: 50){
                    Spacer()
                    NavigationLink(destination: CurrentlyReadingView()){
                        Text("Currently Reading")
                            .font(.system(size: 20.0))
                            .fontWeight(.semibold)
                            .frame(width: 350, height: 100)
                             .padding(.all, 20)
                             .background(
                                 RoundedRectangle(cornerRadius:23, style: .continuous).fill(Color.gray)
                        )}.buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: UpNextView()){
                        Text("Next")
                            .font(.system(size: 20.0))
                            .fontWeight(.semibold)
                            .frame(width: 350, height: 100)
                            .padding(.all, 20)
                            .background(
                                RoundedRectangle(cornerRadius:23, style: .continuous).fill(Color.gray)
                        )}.buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: PastReadsView()){
                        Text("Past Reads")
                            .font(.system(size: 20.0))
                            .fontWeight(.semibold)
                            .frame(width: 350, height: 100)
                            .padding(.all, 20)
                            .background(
                                RoundedRectangle(cornerRadius:23, style: .continuous).fill(Color.gray)
                        )}.buttonStyle(PlainButtonStyle())
                    Spacer()
                    }

                }
                
            }
        }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



