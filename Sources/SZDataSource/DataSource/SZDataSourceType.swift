//
//  SZDataSourceType.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

public protocol SZDataSourceType {
    var cell: SZCellType { get }
    var data: Any? { get }
}
