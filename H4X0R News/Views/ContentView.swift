//
//  ContentView.swift
//  H4X0R News
//
//  Created by Phan Van Phu on 07/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}
