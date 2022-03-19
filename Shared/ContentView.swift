//
//  ContentView.swift
//  Shared
//
//  Created by Ranga Reddy Nukala on 07/01/22.
//

import SwiftUI


struct ContentView: View {
    let swiftLeeOrangeColor = UIColor(red:0.93, green:0.31, blue:0.23, alpha:1.00)
    let qrURLImage = URL(string: "https://www.avanderlee.com")?.qrImage(using: UIColor.black)
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea(.all)
            VStack {
                Image(uiImage: UIImage(ciImage: qrURLImage!))
                    .interpolation(.none)
                    .resizable()
                    .frame(width: 300, height: 300, alignment: .center)
                    .scaledToFit()
                    .padding()
          
                Text("QR CODE")
            }
        }
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
