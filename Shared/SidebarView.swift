//
//  SidebarView.swift
//  The Learn Project
//
//  Created by Ranga Reddy Nukala on 07/01/22.
//

import SwiftUI

struct Sidebar: View {
    @ObservedObject var store: MailStore
    @Binding var selectedFolder: String?
    @Binding var selectedMail: Mail?

    var body: some View {
        List {
            ForEach(store.allMails.keys.sorted(), id: \.self) { folder in
                NavigationLink(
                    destination: FolderView(
                        title: folder,
                        mails: store.allMails[folder, default: []],
                        selectedMail: $selectedMail
                    ),
                    tag: folder,
                    selection: $selectedFolder
                ) {
                    Text(folder).font(.headline)
                }
            }
        }.listStyle(SidebarListStyle())
    }
}

//struct SidebarView_Previews: PreviewProvider {
//    static var previews: some View {
//        SidebarView()
//    }
//}
