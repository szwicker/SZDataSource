//
//  SZTableViewCell.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

import UIKit

public class SZTableViewCell: UITableViewCell, SZLayoutProtocol, SZCellProtocol {
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
    public func layout(type: SZDataSourceType) {}
    public func setupHierarchy() {}
    public func setupViews() {}
    public func setupConstraints() {}
}
