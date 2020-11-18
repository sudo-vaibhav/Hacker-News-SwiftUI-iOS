//
//  ContentView.swift
//  Hacker-News-SwiftUI-iOS
//
//  Created by Vaibhav Chopra on 18/11/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url : post.url)){
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
                
                }
            .navigationTitle("Hacker News")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
