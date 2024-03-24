//
//  EditProfileView.swift
//  ThreadsClone
//
//  Created by Mukthar Amiyan on 24/03/24.
//

import SwiftUI

struct EditProfileView: View {
    
    @State private var bio = ""
    @State private var link = ""
    @State private var privateProfile = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea(.all,edges:[.bottom,.horizontal])
                
                VStack {
                    HStack {
                        VStack (alignment : .leading) {
                            Text("Name")
                                .fontWeight(.semibold)
                            
                            Text("Chalres Leclerc")
                        }
                        
                        Spacer()
                        
                        CircularProfileImageView()
                    }
                    
                    Divider()
                    
                    VStack (alignment : .leading) {
                        Text("Bio")
                            .fontWeight(.semibold)
                        
                        TextField("Enter your bio..",text: $bio,axis: .vertical)
                    }
                    
                    Divider()
                    
                    VStack (alignment : .leading) {
                        Text("Link")
                            .fontWeight(.semibold)
                        
                        TextField("Add link...",text: $link)
                    }
                    
                    Divider()
                    
                    Toggle("Private profile", isOn: $privateProfile)
                    
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .clipShape(.rect(cornerRadius: 12))
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color(.systemGray4),lineWidth: 1)
                }
                .padding()
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel"){
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done"){
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }
            }
        }

    }
}

#Preview {
    EditProfileView()
}
