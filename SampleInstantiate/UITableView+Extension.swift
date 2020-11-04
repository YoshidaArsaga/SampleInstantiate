//
//  UITableView+Extension.swift
//  SampleInstantiate
//
//  Created by 吉田寛規 on 2020/11/04.
//

import Foundation
import UIKit

public extension UITableView {
    func registerXibCell(_ identifier: String) {
        self.register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
    }
    
    func instantiateXibCell(_ identifier: String, _ indexPath: IndexPath) -> UITableViewCell {
        let cell = self.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        return cell
    }
}
