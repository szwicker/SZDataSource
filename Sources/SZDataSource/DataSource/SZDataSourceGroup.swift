//
//  SZDataSourceGroup.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

struct SZDataSourceGroup {
    var name: String
    var items: [SZDataSourceItem]
    
    init(name: String = "", items: [SZDataSourceItem]) {
        self.name = name
        self.items = items
    }
}
