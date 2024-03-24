//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by Mukthar Amiyan on 23/03/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var username = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(.threadsLogo)
                .resizable()
                .scaledToFit()
                .frame(width: 120,height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .textInputAutocapitalization(.none)
                    .threadsTextField()
                
                SecureField("Enter your password", text: $password)
                    .threadsTextField()
                
                TextField("Enter your full name", text: $fullName)
                    .threadsTextField()
                
                TextField("Enter your username", text: $username)
                    .threadsTextField()
            }
            
            Button ("Sign Up",action: {})
            .threadsButton()
            .padding(.top)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack (spacing: 3){
                    Text("Don't have an account?")
                    Text("Sign Up")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
                .font(.footnote)
            }
            .padding(.vertical,16)
        }
    }
}

#Preview {
    RegistrationView()
}
