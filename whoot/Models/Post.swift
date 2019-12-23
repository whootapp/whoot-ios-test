//
//  Post.swift
//  whoot
//
//  Created by Carlos Estrada on 12/22/19.
//  Copyright © 2019 Whoot. All rights reserved.
//

import SwiftUI
import CoreLocation

class Post: Identifiable {
    
    // - MARK: Initialized Data
    
    var id: String = "qwertyuiop1234567890"
    private var body: String = "Hello world!"
    private var userId: String = "qwertyuiop1234567890"
    private var dateCreated: String = "2019-12-31T09:41:00-0800"
    private var location = CLLocationCoordinate2D(latitude: -121.80047099489886, longitude: 36.6552803339778)
    private var upvotes: Int = 0
    private var downvotes: Int = 0
    private var commentCount: Int = 0
    private var roomName: String?
    
    // - MARK: Getters & Setters
    
    func setId(id: String) {
        self.id = id
    }
    
    func getId() -> String {
        return id
    }
    
    func setBody(body: String) {
        self.body = body
    }
    
    func getBody() -> String {
        return body
    }
    
    func setUserId(userId: String) {
        self.userId = userId
    }
    
    func getUserId() -> String {
        return userId
    }
    
    func setUpvotes(upvotes: Int) {
        self.upvotes = upvotes
    }
    
    func getUpvotes() -> Int {
        return upvotes
    }
    
    func setDownvotes(downvotes: Int) {
        self.downvotes = downvotes
    }
    
    func getDownvotes() -> Int {
        return downvotes
    }
    
    func setCommentCount(commentCount: Int) {
        self.commentCount = commentCount
    }
    
    func getCommentCount() -> Int {
        return commentCount
    }
    
    // - MARK: Date functions
    
    func setDateCreated(dateCreated: String) {
        self.dateCreated = dateCreated
    }
    
    func getLongDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        formatter.dateStyle = .full
        formatter.timeStyle = .none
        let date = formatter.date(from: self.dateCreated)!
        return formatter.string(from: date)
    }
    
    func getTime() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        let date = formatter.date(from: self.dateCreated)!
        return formatter.string(from: date)
    }
    
    // - MARK: Data Conversion
    
    func loadDataFromDictionary(dictionary: Dictionary<AnyHashable, Any>) {
        
    }
}
