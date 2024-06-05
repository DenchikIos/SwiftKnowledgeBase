//
//  InfoView.swift
//  SwiftKnowledgeBase
//
//  Created by User on 05.06.2024.
//

import SwiftUI

struct InfoView: View {
    var titleOn : Bool
    @Binding var rowHeight: Double
    
    var body: some View {
            NavigationView {
                List(PostArray().data) {post in
                    NavigationLink {
                        InfoDetails(post: post)
                    } label: {
                        InfoRow(post: post, rowHeight: $rowHeight)
                    }
                }.navigationTitle("Swift Knowledge Base")
                 .listStyle(.plain)
                 .toolbar(titleOn ? .visible : .hidden)
            }
    }
}
