//
//  SZTableView.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

import UIKit

class SZTableView: UIView, SZLayoutProtocol {
    // MARK: - Outlets
    let tableView: UITableView
    
    // MARK: - Properties
    lazy var diffableDataSource = UITableViewDiffableDataSource<String, SZDataSourceItem>(tableView: self.tableView, cellProvider: { tableView, indexPath, item in
        let cell = tableView.dequeueReusableCell(item: item.type, indexPath: indexPath)
        cell.layout(type: item.type)
        return cell
    })
    
    var dataSource: [SZDataSourceGroup] = [] {
        didSet {
            setDataSource()
        }
    }
    
    init(tableView: UITableView = UITableView()) {
        self.tableView = tableView
        super.init(frame: .zero)
        setupLayout()
    }
    
    override init(frame: CGRect) {
        self.tableView = UITableView()
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    func setupHierarchy() {
        addSubview(autolayout: tableView)
    }
    
    func setupViews() {}
    
    func setupConstraints() {
        let attributes: [NSLayoutConstraint.Attribute] = [.top, .bottom, .right, .left]
        NSLayoutConstraint.activate(attributes.map {
            NSLayoutConstraint(item: tableView, attribute: $0, relatedBy: .equal, toItem: self.superview, attribute: $0, multiplier: 1, constant: 0)
        })
    }
    
    func setDataSource() {
        var snapShot = diffableDataSource.snapshot()
        snapShot.deleteAllItems()
        snapShot.appendSections(dataSource.compactMap({ $0.name }))
        
        for group in dataSource {
            snapShot.appendItems(group.items, toSection: group.name)
        }
        
        diffableDataSource.apply(snapShot, animatingDifferences: true)
    }
}
