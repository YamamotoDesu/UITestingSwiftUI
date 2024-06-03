//
//  Task.swift
//  UITestingSwiftUI
//
//  Created by Yamamoto Kyo on 2024/06/03.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
}
