//
//  InfoDetails.swift
//  SwiftKnowledgeBase
//
//  Created by User on 05.06.2024.
//

import SwiftUI

struct InfoDetails: View {
    var post: Post
    
    var body: some View {
        ScrollView{
            Text(post.title)
                .font(.title)
            post.image
                .resizable()
            Text(post.description)
                .padding(12)
            Spacer()
        }
    }
}
