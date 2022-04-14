//
//  UIView+SZDataSource.swift
//  SZDataSource
//
//  Created by Simon Zwicker on 14.04.22.
//
import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
    
    func addSubview(autolayout subview: UIView) {
        self.addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = true
    }
    
    func addSubviews(autolayout subviews: [UIView]) {
        subviews.forEach { self.addSubview(autolayout: $0) }
    }
}
