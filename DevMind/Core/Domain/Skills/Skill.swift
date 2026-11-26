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
        
        guard !description.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            throw SkillValidationError.emptyDescription
        }
        
        guard !tags.isEmpty, tags.allSatisfy({
            !$0.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
        }) else {
            throw SkillValidationError.emptyTags
        }
        
        guard !content.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            throw SkillValidationError.emptyContent
        }
        
        guard !version.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            throw SkillValidationError.emptyVersion
        }
        
        self.id = id
        self.name = name
        self.description = description
        self.category = category
        self.tags = tags
        self.content = content
        self.version = version
    }
    
}
