//
//  Post.swift
//  SwiftKnowledgeBase
//
//  Created by User on 05.06.2024.
//

import Foundation
import SwiftUI

public struct Post : Identifiable{
    public let id =  UUID()
    public let title: String
    public let description: String
    public let image: Image
}
