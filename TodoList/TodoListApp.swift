//
//  TodoListApp.swift
//  TodoList
//
//  Created by Jai Singh on 03/03/24.
//

import SwiftUI
/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
*/



@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
