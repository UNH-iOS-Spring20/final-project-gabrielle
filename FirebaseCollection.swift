//
//  FirebaseCollection.swift
//  Bookmark
//
//  Created by Gabrielle Good on 5/6/20.
//  Copyright © 2020 gabrielle. All rights reserved.
//



import FirebaseFirestore

protocol DocumentSerializable{
    init?(id: String, dictionary: [String: Any])
}
class FirebaseCollection<T: DocumentSerializable>: ObservableObject {
    @Published private(set) var items: [T]
    let query: Query
    
    init(query: Query){
        self.items = []
        self.query = query
        listenForChanges()
    }
    
    func listenForChanges(){
        query.addSnapshotListener{ querySnapshot, error in
            guard let snapshot = querySnapshot else {
                print("Error fetching snapshots: \(error!)")
                return
            }
            let models = snapshot.documents.map {(document) -> T in
                if let model = T(id: document.documentID,
                                 dictionary: document.data()){
                return model
            } else {
                fatalError("Unable to initialize type \(T.self) with dictionary \(document.data())")
            }
         }
            self.items = models
        }
    }


}
