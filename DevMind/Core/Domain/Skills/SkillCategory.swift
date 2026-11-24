//
//  SkillCategory.swift
//  DevMind
//
//  Created by Jean Ramalho on 23/11/26.
//
import Foundation

enum SkillCategory: String, CaseIterable, Identifiable {
    
    case development
    case architecture
    case testing
    case documentation
    case productivity
    case other
    
    var id: String {
        rawValue
    }
    
    var displayName: String {
        switch self {
        case .development:
            return "Desenvolvimento"
        case .architecture:
            return "Arquitetura"
        case .testing:
            return "Testes"
        case .documentation:
            return "Documentação"
        case .productivity:
            return "Produtividade"
        case .other:
            return "Outros"
        }
    }
}
