//
//  SZDataSourceItem.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

import Foundation

public struct SZDataSourceItem: Hashable {
    private var id: String
    public var type: SZDataSourceType
    
    public init(type: SZDataSourceType) {
        self.id = UUID().uuidString
        self.type = type
    }
    
    public static func == (lhs: SZDataSourceItem, rhs: SZDataSourceItem) -> Bool {
        return lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
