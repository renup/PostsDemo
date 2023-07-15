//
//  Post.swift
//  PostsDemo
//
//  Created by Renu Punjabi on 6/22/23.
//

import Foundation

struct Post: Codable, Identifiable {
    let id: Int
    let body: String
    let userId: Int
    let title: String
}
