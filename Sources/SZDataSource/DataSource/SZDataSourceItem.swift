//
//  SZDataSourceItem.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

import Foundation

struct SZDataSourceItem: Hashable {
    var id: String
    var type: SZDataSourceType
    
    init(type: SZDataSourceType) {
        self.id = UUID().uuidString
        self.type = type
    }
    
    static func == (lhs: SZDataSourceItem, rhs: SZDataSourceItem) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
