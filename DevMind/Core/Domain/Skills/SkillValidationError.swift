//
//  SkillValidationError.swift
//  DevMind
//
//  Created by Jean Ramalho on 25/11/26.
//
import Foundation

enum SkillValidationError: Error {
    case invalidID
    case emptyName
    case emptyDescription
    case emptyTags
    case emptyConten
    case emptyVersion
    
}
