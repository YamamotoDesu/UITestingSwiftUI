//
//  AddTaskView.swift
//  UITestingSwiftUI
//
//  Created by Yamamoto Kyo on 2024/06/03.
//

import SwiftUI

struct AddTaskView: View {
    @ObservedObject var viewModel: TaskViewModel
    @State private var newTaskTitle = ""

    var body: some View {
        VStack {
            TextField("Enter task", text: $newTaskTitle)
                .padding()
            Button("Add Task") {
                viewModel.addTask(title: newTaskTitle)
                newTaskTitle = ""
            }
            .accessibilityIdentifier("AddTaskButton")
            .padding()
        }
        .navigationTitle("Add Task")
    }
}
