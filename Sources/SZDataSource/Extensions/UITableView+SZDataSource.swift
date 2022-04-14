//
//  UITableView+SZDataSource.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

import UIKit

extension UITableView {
    // MARK: - RegisterCells
    func register(_ types: [SZDataSourceType]) {
        for type in types {
            register(type.cell.cell, forCellReuseIdentifier: type.cell.identifier)
        }
    }
    
    // MARK: DequeueReusableCell
    func dequeueReusableCell(item: SZDataSourceType, indexPath: IndexPath) -> SZTableViewCell {
        guard let cell = dequeueReusableCell(withIdentifier: item.cell.identifier, for: indexPath) as? SZTableViewCell else { return SZTableViewCell() }
        return cell
    }
}
