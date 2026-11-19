//
//  MenuBarView.swift
//  DevMind
//
//  Created by Jean Ramalho on 18/11/26.
//
import SwiftUI

struct MenuBarView: View {
    
    @Environment(\.openWindow) private var openWindow
    
    var body: some View {
        Button("Abrir DevMind") {
            openWindow(id: "main")
        }
    }
}

