//
//  UserCell.swift
//  ThreadsClone
//
//  Created by Mukthar Amiyan on 24/03/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            
            CircularProfileImageView()
            
            VStack (alignment: .leading) {
                
                Text("maxverstappen1")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Max Verstappen")
                  
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color(.systemGray4),lineWidth: 1)
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
