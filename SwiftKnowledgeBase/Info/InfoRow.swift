//
//  InfoRow.swift
//  SwiftKnowledgeBase
//
//  Created by User on 05.06.2024.
//

import SwiftUI

struct InfoRow: View {
    var post: Post
    @Binding var rowHeight: Double
    
    var body: some View {
        HStack {
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: $rowHeight.wrappedValue, height: $rowHeight.wrappedValue)
                .padding(.leading, 12)
            Text(post.title)
                .padding(.leading, 10.0)
                .font(.title)
            Spacer()
        }
    }
    
}


