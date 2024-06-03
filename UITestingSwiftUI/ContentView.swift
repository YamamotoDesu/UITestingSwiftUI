//
//  ContentView.swift
//  UITestingSwiftUI
//
//  Created by Yamamoto Kyo on 2024/06/03.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = TaskViewModel()

    var body: some View {
        TabView {
            TaskListView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tasks")
                }
            AddTaskView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Add Task")
                }
        }
    }
}

#Preview {
    ContentView()
}
