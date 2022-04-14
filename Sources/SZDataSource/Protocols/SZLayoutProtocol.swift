//
//  SZLayoutProtocol.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

public protocol SZLayoutProtocol {
    func setupLayout()
    func setupHierarchy()
    func setupViews()
    func setupConstraints()
}

extension SZLayoutProtocol {
    public func setupLayout() {
        setupHierarchy()
        setupViews()
        setupConstraints()
    }
}
