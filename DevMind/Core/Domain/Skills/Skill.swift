//
//  Skill.swift
//  DevMind
//
//  Created by Jean Ramalho on 23/11/26.
//
import Foundation

struct Skill: Identifiable {
    
    let id: String
    
    var name: String
    var description: String
    var category: SkillCategory
    var tags: [String]
    var content: String
    var version: String
    
}
