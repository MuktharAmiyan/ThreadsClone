//
//  ThreadCreationView.swift
//  ThreadsClone
//
//  Created by Mukthar Amiyan on 23/03/24.
//

import SwiftUI

struct ThreadCreationView: View {
    
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack{
                HStack(alignment: .top){
                    CircularProfileImageView()
                    
                    VStack (alignment: .leading, spacing: 4){
                        Text("maxverstappen1")
                            .fontWeight(.semibold)
                        
                        TextField("Start a thread..", text: $caption,axis: .vertical)
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                    if !caption.isEmpty {
                        Button{
                            caption = ""
                        }label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12,height: 12)
                                .foregroundStyle(.gray)
                        }
                    }
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel"){
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Post"){
                        
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    ThreadCreationView()
}
