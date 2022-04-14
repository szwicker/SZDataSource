//
//  SZLayoutProtocol.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//

protocol SZLayoutProtocol {
    func setupLayout()
    func setupHierarchy()
    func setupViews()
    func setupConstraints()
}

extension SZLayoutProtocol {
    func setupLayout() {
        setupHierarchy()
        setupViews()
        setupConstraints()
    }
}
