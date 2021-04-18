//
//  animator.swift
//  DesignInSwift
//
//  Created by Kinjal Pipaliya on 24/03/21.
//

import UIKit
import Foundation
typealias Animation = (UITableViewCell, IndexPath, UITableView) -> Void

final class Animator {
    private var hasAnimatedAllCells = false
    private let animation: Animation

    init(animation: @escaping Animation) {
        self.animation = animation
    }

    func animate(cell: UITableViewCell, at indexPath: IndexPath, in tableView: UITableView) {
        guard !hasAnimatedAllCells else {
            return
        }

        animation(cell, indexPath, tableView)

        let index = tableView.indexPathsForVisibleRows
        hasAnimatedAllCells = (index != nil)
    }
}
