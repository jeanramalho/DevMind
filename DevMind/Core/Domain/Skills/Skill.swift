//
//  Skill.swift
//  DevMind
//
//  Created by Jean Ramalho on 23/11/26.
//
import Foundation

struct Skill: Identifiable {
    
    let id: String
    
    private(set) var name: String
    private(set) var description: String
    private(set) var category: SkillCategory
    private(set) var tags: [String]
    private(set) var content: String
    private(set) var version: String
    
    init(
        id: String,
        name: String,
        description: String,
        category: SkillCategory,
        tags: [String],
        content: String,
        version: String
    ) throws {
        guard id.range(
            of: "^[a-z0-9]+(-[a-z0-9]+)*$",
            options: .regularExpression
        ) != nil else {
            throw SkillValidationError.invalidID
        }
        
        guard !name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            throw SkillValidationError.emptyName
        }
    }
    
}
