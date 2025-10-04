//
//  ContentView.swift
//  swiftCourseraProject
//
//  Created by Richie on 8/13/25.
//

import SwiftUI

struct ContentView: View {
    //    @State private var username = ""
    //  @State private var password = ""
    @State private var navigateToUserList = false
    @State private var navigateToDiagnostics = false
    //
    var body: some View {
        NavigationStack {
            //            VStack(spacing: 20) {
            //                Text("Welcome")
            //                    .font(.largeTitle)
            //
            //                TextField("Username", text: $username)
            //                    .textFieldStyle(RoundedBorderTextFieldStyle())
            //
            //                SecureField("Password", text: $password)
            //                    .textFieldStyle(RoundedBorderTextFieldStyle())
            //
            
            
            
            Text("Press GO! to see the links for the events!")
            
            
            Button("GO!") {
                // Handle login logic here
                navigateToUserList = true
            }
            .buttonStyle(.borderedProminent)
            .navigationTitle("Main Page")
            
            .padding()
            Button("Diagnostics"){
                navigateToDiagnostics = true
            }
            
            //                Button("Forgot Your Password?") {
            //                    print("Forgot Your Password? pressed")
            //                }
            
            NavigationLink(destination: UserList(), isActive: $navigateToUserList) {
                EmptyView()
            }
            NavigationLink(destination: Diagnostics(), isActive: $navigateToDiagnostics) {
                EmptyView()
            }
        }
        //            .padding()
    }
    //    }
    //}
}



#Preview {
    ContentView()
}
