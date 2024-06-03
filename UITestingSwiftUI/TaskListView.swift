//
//  TaskListView.swift
//  UITestingSwiftUI
//
//  Created by Yamamoto Kyo on 2024/06/03.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var viewModel: TaskViewModel

    var body: some View {
        NavigationView {
            List(viewModel.tasks) { task in
                Text(task.title)
            }
            .navigationBarTitle("Tasks")
        }
    }
}
