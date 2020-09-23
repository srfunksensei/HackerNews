//
//  ContentView.swift
//  HackerNews
//
//  Created by MB on 21/09/2020.
//  Copyright © 2020 MB. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello world 1"),
    Post(id: "2", title: "Hello world 2"),
    Post(id: "3", title: "Hello world 3")
]
