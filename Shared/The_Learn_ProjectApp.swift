//
//  The_Learn_ProjectApp.swift
//  Shared
//
//  Created by Ranga Reddy Nukala on 07/01/22.
//

import SwiftUI

@main
struct The_Learn_ProjectApp: App {
    @StateObject var store = MailStore()
    @State private var selectedLabel: String? = "Inbox"
    @State private var selectedMail: Mail?
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Sidebar(
                    store: store,
                    selectedFolder: $selectedLabel,
                    selectedMail: $selectedMail
                )
                Text("No Label Selected")
                Text("No Mail Selected")
            }
            
          
        }
    }
}
