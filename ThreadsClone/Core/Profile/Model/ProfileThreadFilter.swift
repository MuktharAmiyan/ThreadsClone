//
//  ProfileThreadFilter.swift
//  ThreadsClone
//
//  Created by Mukthar Amiyan on 24/03/24.
//

import Foundation

enum ProfileThreadFilter : Int , CaseIterable , Identifiable {
    case threads
    case replies
    
    
    var title : String  {
        switch self {
        case .threads: "Threads"
        case .replies: "Replies"
        }
    }
    var id :Int { self.rawValue }
}
