//
//  MailView.swift
//  The Learn Project
//
//  Created by Ranga Reddy Nukala on 07/01/22.
//

import SwiftUI

struct MailView: View {
    let mail: Mail
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(mail.subject)
                    .font(.headline)
                Spacer()
            }.padding(.vertical)
            HStack(alignment: .bottom) {
                VStack(alignment: .leading,spacing: 8) {
                    Text(mail.from)
                    HStack {
                        Text("To:")
                            .padding(.trailing,8)
                        ForEach(mail.to, id: \.self) { person in
                            Text(person)
                        }
                    }
                    .foregroundColor(.blue)
                }.font(.subheadline)
                Spacer()
                Text(mail.date, style: .date)
                    .font(.caption)
            }
            
            Divider()
            
            
            Text(mail.body)
                .padding(.vertical,20)
            Spacer()
        }.padding()
    }
}
