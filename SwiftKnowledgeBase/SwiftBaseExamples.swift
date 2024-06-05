//
//  SwiftBaseExamples.swift
//  SwiftKnowledgeBase
//
//  Created by User on 05.06.2024.
//

import Foundation
import SwiftUI

struct PostArray {
    let data: [Post] = make()
    
    static func make() -> [Post] {
        [
            Post(
                title: "Functions",
                description: """
                Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.
                Swift’s unified function syntax is flexible enough to express anything from a simple C-style function with no parameter names to a complex Objective-C-style method with names and argument labels for each parameter. Parameters can provide default values to simplify function calls and can be passed as in-out parameters, which modify a passed variable once the function has completed its execution.
                Every function in Swift has a type, consisting of the function’s parameter types and return type. You can use this type like any other type in Swift, which makes it easy to pass functions as parameters to other functions, and to return functions from functions. Functions can also be written within other functions to encapsulate useful functionality within a nested function scope.
                """,
                image: Image("func")
            ),
            Post(
                title: "Closures",
                description: """
                Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages.
                Closures can capture and store references to any constants and variables from the context in which they’re defined. This is known as closing over those constants and variables. Swift handles all of the memory management of capturing for you.
                Global and nested functions, as introduced in Functions, are actually special cases of closures. Closures take one of three forms:
                Global functions are closures that have a name and don’t capture any values.
                Nested functions are closures that have a name and can capture values from their enclosing function.
                Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context.
                Swift’s closure expressions have a clean, clear style, with optimizations that encourage brief, clutter-free syntax in common scenarios. These optimizations include:
                Inferring parameter and return value types from context
                Implicit returns from single-expression closures
                Shorthand argument names
                Trailing closure syntax
                """,
                image: Image("closures")
            ),
            Post(
                title: "Enumerations",
                description: """
                An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
                If you are familiar with C, you will know that C enumerations assign related names to a set of integer values. Enumerations in Swift are much more flexible, and don’t have to provide a value for each case of the enumeration. If a value (known as a raw value) is provided for each enumeration case, the value can be a string, a character, or a value of any integer or floating-point type.
                Alternatively, enumeration cases can specify associated values of any type to be stored along with each different case value, much as unions or variants do in other languages. You can define a common set of related cases as part of one enumeration, each of which has a different set of values of appropriate types associated with it.
                Enumerations in Swift are first-class types in their own right. They adopt many features traditionally supported only by classes, such as computed properties to provide additional information about the enumeration’s current value, and instance methods to provide functionality related to the values the enumeration represents. Enumerations can also define initializers to provide an initial case value; can be extended to expand their functionality beyond their original implementation; and can conform to protocols to provide standard functionality.
                """,
                image: Image("enum")
            ),
        ]
    }
    
}

extension Post {
    static var example: Post {
        let post = Post(title: "Sample",
                        description: """
                        Extra text
                        """,
                        image: Image("enum"))
        return post
    }
}
