//  Words.swift
//  Created by Adam Roe on 05.05.19.
//  A model for the JSON data

import Vapor

// model what we expect from the frontend
struct WordRequest: Content {
    var word: String
}

// model what the JSON "database" holds.
//struct Words: Content {
//    var words: Array<String>
//}
