//
//  ThreadCell.swift
//  ThreadsClone
//
//  Created by Mukthar Amiyan on 23/03/24.
//

import SwiftUI

struct ThreadCell: View {
    
   
    
    var body: some View {
        VStack {
            HStackLayout(alignment: .top,spacing: 12) {
                
                CircularProfileImageView()
                
                VStack (alignment: .leading ,spacing: 4) {
                    
                    HStack {
                        Text("maxverstappen1")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))
                        
                        Button {
                            
                        } label : {
                            Label("more", systemImage: "ellipsis")
                                .labelStyle(.iconOnly)
                                .foregroundStyle(Color(.darkGray))
                        }
                    }
                    
                    Text("Formula 1 champion")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 16) {
                        Button {
                            
                        } label : {
                            Label("like", systemImage: "heart")
                                .labelStyle(.iconOnly)
                                .foregroundStyle(Color(.darkGray))
                        }
                        
                        Button {
                            
                        } label : {
                            Label("comment", systemImage: "bubble.right")
                                .labelStyle(.iconOnly)
                                .foregroundStyle(Color(.darkGray))
                        }
                        
                        
                        Button {
                            
                        } label : {
                            Label("more", systemImage: "arrow.rectanglepath")
                                .labelStyle(.iconOnly)
                                .foregroundStyle(Color(.darkGray))
                        }
                        
                        Button {
                            
                        } label : {
                            Label("more", systemImage: "paperplane")
                                .labelStyle(.iconOnly)
                                .foregroundStyle(Color(.darkGray))
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}


