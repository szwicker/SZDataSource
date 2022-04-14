//
//  SZTableViewCell.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

import UIKit

class SZTableViewCell: UITableViewCell, SZLayoutProtocol, SZCellProtocol {
    // MARK: - Life-Cycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayout()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Layout
    func layout(type: SZDataSourceType) {}
    func setupHierarchy() {}
    func setupViews() {}
    func setupConstraints() {}
}
