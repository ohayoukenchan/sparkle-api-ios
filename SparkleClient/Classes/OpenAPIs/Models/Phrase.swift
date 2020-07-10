//
// Phrase.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** フレーズモデル */
public struct Phrase: Codable { 


    public var createdAt: String?
    public var phrase: String?
    public var bookId: Int
    public var userID: UserInPhrases?
    public var updatedAt: String?

    public init(createdAt: String?, phrase: String?, bookId: Int, userID: UserInPhrases?, updatedAt: String?) {
        self.createdAt = createdAt
        self.phrase = phrase
        self.bookId = bookId
        self.userID = userID
        self.updatedAt = updatedAt
    }

}
