//
//  TaskViewModel.swift
//  UITestingSwiftUI
//
//  Created by Yamamoto Kyo on 2024/06/03.
//

import Foundation

final class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []

    func addTask(title: String) {
        let newTask = Task(title: title)
        tasks.append(newTask)
    }
}
