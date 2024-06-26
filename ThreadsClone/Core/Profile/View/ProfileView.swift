//
//  ProfileView.swift
//  ThreadsClone
//
//  Created by Mukthar Amiyan on 23/03/24.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    
    var body: some View {
        
        ScrollView {
            VStack {
                HStack (alignment: .top ) {
                    VStack (alignment: .leading , spacing: 12) {
                        VStack (alignment: .leading, spacing: 4) {
                            
                            Text("Charles Leclerc")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("Charles_leclerc")
                                .font(.subheadline)
                        }
                        
                        Text("Formula 1 driver for Scuderia Ferrari")
                            .font(.footnote)
                        
                        Text("2 followers")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                    
                    CircularProfileImageView()
                }
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352,height: 32)
                        .background(.black)
                        .clipShape(.rect(cornerRadius: 8))
                }
                
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases){ filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundStyle(.black)
                                        .frame(width: filterBarWidth, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundStyle(.clear)
                                        .frame(width: filterBarWidth, height: 1)
                                }
                                    
                            }
                            .onTapGesture {
                                withAnimation (.spring){ selectedFilter = filter }
                            }
                        }
                    }
                    
                    LazyVStack {
                        ForEach(1...10,id: \.self) { thread in
                            ThreadCell()
                        }
                    }
                }
                .padding(.vertical ,8)
            }
        }
        .padding(.horizontal)
        .scrollIndicators(.hidden)
        
    }
}

#Preview {
    ProfileView()
}
