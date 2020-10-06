//
//  ContentView.swift
//  SwiftUI--Forms--2
//
//  Created by Swapnil  Magar on 30/09/20.
//  Copyright © 2020 Swapnil Magar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var mobile = ""

    var body: some View {
        NavigationView {
            Form {
                Section {
                    (
                        Text("First Name")
                            .bold()
                            .font(.system(size: 22.0))
                            .foregroundColor(.black) +
                        Text(" *")
                            .bold()
                            .foregroundColor(.red)
                    )
                    TextField("Enter your first name", text: $firstName)
                }
                Section {
                    (
                        Text("Last Name")
                            .bold()
                            .font(.system(size: 22.0))
                            .foregroundColor(.black) +
                        Text(" *")
                            .bold()
                            .foregroundColor(.red)
                    )
                    TextField("Enter your last name", text: $lastName)
                }
                Section {
                    Text("Email ID")
                        .bold()
                        .font(.system(size: 22.0))
                    TextField("Enter your Email ID", text: $email)
                        .keyboardType(.emailAddress)
                }
                Section {
                    Text("Mobile Number")
                        .bold()
                        .font(.system(size: 22.0))
                    TextField("Enter your mobile number", text: $mobile)
                        .keyboardType(.phonePad)
                }
                Section {
                    HStack {
                        Spacer()
                        Button(action: {
                            print("Button action")
                        }) {
                            Text("SUBMIT").bold()
                                .padding().overlay(
                                    Capsule(style: .continuous).stroke(Color.black, lineWidth: 2)
                            )
                        }
                        .font(.system(size: 22.0))
                        .foregroundColor(.black)
                        .padding()
                        Spacer()
                    }
                }
            }
        .navigationBarTitle("Personal Info")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
