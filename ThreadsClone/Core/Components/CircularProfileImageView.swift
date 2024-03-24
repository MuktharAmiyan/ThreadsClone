//
//  CircularProfileImageView.swift
//  ThreadsClone
//
//  Created by Mukthar Amiyan on 24/03/24.
//

import SwiftUI

struct CircularProfileImageView: View {
    let avatarImage = "https://img.redbull.com/images/c_crop,x_1480,y_636,h_836,w_837/c_fill,w_350,h_350/q_auto:low,f_auto/redbullcom/2024/2/29/h15xhhklt8ce9tnrfv7y/max-verstappen-red-bull-racing-2024-launch-portrait"
    
    var body: some View {
        AsyncImage(url: URL(string:avatarImage)){ image in
            image
                .resizable()
                .scaledToFill()
                .clipShape(.circle)
            
        } placeholder: {
            
            ProgressView()
            
        }
        .frame(width: 40,height: 40)
    }
}

#Preview {
    CircularProfileImageView()
}
