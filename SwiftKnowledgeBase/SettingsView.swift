//
//  SettingsView.swift
//  SwiftKnowledgeBase
//
//  Created by User on 05.06.2024.
//

import SwiftUI

struct SettingsView: View {
    @State private var isEditing = false
    @Environment(\.colorScheme) var colorScheme
    @Binding var titleOn: Bool
    @Binding var rowHeight: Double

    var body: some View {
        Form {
            Section(header: Text("App Theme")) {
                Text(colorScheme == .dark ? "Dark Theme enabled" : "Light Theme enabled")
            }
            Section(header: Text("title")) {
                Toggle("Show title list", isOn: $titleOn)
                if titleOn {
                    Text("Navigation title enabled")
                }
            }
            Section(header: Text("InfoRow Size")) {
                VStack{
                    Slider(
                        value: $rowHeight,
                        in: 40...100,
                        step: 5,
                        onEditingChanged: { editing in
                            isEditing = editing
                        }
                    )
                    Text("\(Int(rowHeight)) pt")
                    if isEditing {
                        InfoRow(post: Post.example, rowHeight: $rowHeight)
                    }
                }
            }
        }
    }
}
