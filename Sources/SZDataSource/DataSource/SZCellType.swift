//
//  SZCellType.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

public struct SZCellType {
    let cell: AnyClass?
    let identifier: String
    
    public init(cell: AnyClass?, identifier: String) {
        self.cell = cell
        self.identifier = identifier
    }
}
