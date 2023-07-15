//
//  ContentView.swift
//  PostsDemo
//
//  Created by Renu Punjabi on 6/22/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = PostsViewModel()
    var body: some View {
        NavigationStack {
            
            VStack {
                List(viewModel.sectionPosts) { section in
                    
                    Section(header: Text("user \(section.userId)")) {
                        ForEach(section.posts) { post in
                            
                            postCell(post)
                            
                        }
                    }
                }
                .navigationTitle("Posts")
                .onAppear {
                    viewModel.getPostsAsyncAwait()
//                    viewModel.addPost()
                }
            }
        }
    }
    
    private func postCell(_ post: Post) -> some View {
        VStack {
            Text(post.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
