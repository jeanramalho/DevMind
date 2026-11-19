//
//  DevMindApp.swift
//  DevMind
//
//  Created by Jean Ramalho on 12/11/26.
//
import SwiftUI

@main
struct DevMindApp: App {
    
    var body: some Scene {
        
        WindowGroup(id: "main") {
            HomeView()
        }
        
        MenuBarExtra{
            MenuBarView()
        } label: {
            
            Label("DevMind", systemImage: "brain")
        }
    }
}

