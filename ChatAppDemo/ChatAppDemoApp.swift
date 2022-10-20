//
//  ChatAppDemoApp.swift
//  ChatAppDemo
//
//  Created by Kirill Willer on 31.05.22.
//

import SwiftUI
import Firebase

@main
struct ChatAppDemoApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
