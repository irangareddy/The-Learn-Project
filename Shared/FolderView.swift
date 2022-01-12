//
//  FolderView.swift
//  The Learn Project
//
//  Created by Ranga Reddy Nukala on 07/01/22.
//

import SwiftUI

struct FolderView: View {
    let title: String
    let mails: [Mail]
    @Binding var selectedMail: Mail?

    var body: some View {
        List {
            ForEach(mails) { mail in
                NavigationLink(
                    destination: MailView(mail: mail),
                    tag: mail,
                    selection: $selectedMail
                ) {
                    VStack(alignment: .leading) {
                        Text(mail.subject)
                        Text(mail.date, style: .date)
                    }
                }
            }
        }.navigationTitle(title)
    }
}


//struct FolderView_Previews: PreviewProvider {
//    static var previews: some View {
//        FolderView()
//    }
//}
