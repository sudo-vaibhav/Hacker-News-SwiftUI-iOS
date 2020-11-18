//
//  PostData.swift
//  Hacker-News-SwiftUI-iOS
//
//  Created by Vaibhav Chopra on 18/11/20.
//

import Foundation

struct Results : Decodable{
    let hits : [Post]
}


struct Post: Decodable, Identifiable{
    let title : String
    let url : String?
    let objectID : String
    let points : Int
    var id:String {
        return objectID
    }
}
