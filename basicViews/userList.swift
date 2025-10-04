//
//  userList.swift
//  swiftCourseraProject
//
//  Created by Richie on 8/17/25.
//


import SwiftUI

struct UserList: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack {
            Text("Choose An event!")
                .italic()
            List {
                // list of buttons with
                Button(" Apple Event 2021") {
                    if let url = URL(string: "https://www.youtube.com/watch?v=EvGOlAkLSLw") {
                        openURL(url)
                    }
                }
                
                // Buttons
                Button(" Apple Event 2022") {
                    if let url = URL(string:"https://www.youtube.com/watch?v=ux6zXguiqxM") {
                        openURL(url)
                    }
                }
                Button(" Apple Event 2023") {
                    if let url = URL(string:"https://www.youtube.com/watch?v=ZiP1l7jlIIA") {
                        openURL(url)
                    }
                }
                Button(" Apple Event 2024") {
                    if let url = URL(string:"https://www.youtube.com/watch?v=uarNiSl_uh4") {
                        openURL(url)
                    }
                }
                .onTapGesture {
                    print("I just tapped this button Apple Event 2024")
                }
            }
            
            Text("WWDC events")
                .italic()
            List {
                
                Button(" Apple WWDC2023"){
                    if let url = URL(string: ""){
                        openURL(url)
                    }
                }
                
                Button(" Apple WWDC2024") {
                    if let url = URL(string:"https://www.youtube.com/watch?v=RXeOiIDNNek") {
                        openURL(url)
                    }
                }
                Button(" Apple WWDC2025") {
                    if let url = URL(string:"https://www.youtube.com/watch?v=0_DjDdfqtUE&pp=ygUQYXBwbGUgZXZlbnQgMjAyNQ%3D%3D") {
                        openURL(url)
                    }
                }
            }
            
            Button("On Tap "){
                print("From inside the button")
            }
            .simultaneousGesture(
                TapGesture().onEnded{
                    print("Printed from the Gesture")
                }
            )
            .buttonStyle(.borderedProminent)
            
            Text("Tap here").onLongPressGesture{
                print("Long press detected")
            }
            
            
            
            Spacer()
            HStack{
                Image("atimage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
            }
            
            Spacer()
            
            
            
            Button("Diag BUtton", systemImage: "bolt.horizontal.circle") {
                print("Hello, from another button")
            }
            if let url = URL(string: "https://www.youtube.com/watch?v=-EOz09e42j0&t") {
                Link("Link", destination: url)
            }
            
            
            ShareLink(item: URL(string: "https://www.youtube.com/watch?v=-EOz09e42j0&t=179s")!)
        }
    }
}











#Preview {
    UserList()
}

