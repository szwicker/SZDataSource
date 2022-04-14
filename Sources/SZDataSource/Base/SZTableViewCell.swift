//
//  SZTableViewCell.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

import UIKit

open class SZTableViewCell: UITableViewCell, SZLayoutProtocol, SZCellProtocol {
    // MARK: - Life-Cycle
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayout()
    }

    public override func prepareForReuse() {
        super.prepareForReuse()
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Layout
    open func layout(type: SZDataSourceType) {}
    open func setupHierarchy() {}
    open func setupViews() {}
    open func setupConstraints() {}
}
