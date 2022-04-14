//
//  SZDataSourceGroup.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

public struct SZDataSourceGroup {
    public var name: String
    public var items: [SZDataSourceItem]
    
    public init(name: String = "", items: [SZDataSourceItem]) {
        self.name = name
        self.items = items
    }
}
