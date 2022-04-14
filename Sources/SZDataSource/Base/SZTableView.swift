//
//  SZTableView.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

import UIKit

open class SZTableView: UIView, SZLayoutProtocol {
    // MARK: - Outlets
    let tableView: UITableView
    
    // MARK: - Properties
    private lazy var diffableDataSource = UITableViewDiffableDataSource<String, SZDataSourceItem>(tableView: self.tableView, cellProvider: { tableView, indexPath, item in
        let cell = tableView.dequeueReusableCell(item: item.type, indexPath: indexPath)
        cell.layout(type: item.type)
        return cell
    })
    
    public var dataSource: [SZDataSourceGroup] = [] {
        didSet {
            setDataSource()
        }
    }
    
    public init(tableView: UITableView = UITableView()) {
        self.tableView = tableView
        super.init(frame: .zero)
        setupLayout()
    }
    
    public override init(frame: CGRect) {
        self.tableView = UITableView()
        super.init(frame: frame)
        setupLayout()
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    public func setupHierarchy() {
        addSubview(autolayout: tableView)
    }
    
    public func setupViews() {}
    
    public func setupConstraints() {
        let attributes: [NSLayoutConstraint.Attribute] = [.top, .bottom, .right, .left]
        NSLayoutConstraint.activate(attributes.map {
            NSLayoutConstraint(item: tableView, attribute: $0, relatedBy: .equal, toItem: self.superview, attribute: $0, multiplier: 1, constant: 0)
        })
    }
    
    private func setDataSource() {
        var snapShot = diffableDataSource.snapshot()
        snapShot.deleteAllItems()
        snapShot.appendSections(dataSource.compactMap({ $0.name }))
        
        for group in dataSource {
            snapShot.appendItems(group.items, toSection: group.name)
        }
        
        diffableDataSource.apply(snapShot, animatingDifferences: true)
    }
}
