//
//  main.swift
//  Task Manager
//
//  Created by Keano Bellmore on 2/20/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import Foundation


var tasks = [task]()



func createTask() {
    print("what is the name of your task?")
        let name = readLine()!
    print("give a description of your task.")
        let details = readLine()
    print("how many days till your task need to be completed?")
        let days = Int(readLine()!)!
    let currentDate = Date()
    let calendar = Calendar.current
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MM/dd/yyyy h:mm a"
    let completeDate = calendar.date(byAdding: .day, value: days, to: currentDate)!
    let task0 = task(title: "\(name)", dueDate: completeDate, details: details!, taskCompleted: false)
    if task0.dueDate == currentDate {
        task0.taskCompleted == true
    }
    tasks.append(task0)
    mainMenu()
}

func viewTask() {
    print("what task would you like to view?")
    if tasks.count == 0 {
        print("There are no tasks")
    } else {
    for i in 0...tasks.count - 1 {
        if tasks[i].taskCompleted == false {
            print("\(i + 1) \(tasks[i].title)")
        };if tasks[i].taskCompleted == true {
            print("\(i + 1) \(tasks[i].title) is completed")
        }
        }
        let input = Int(readLine()!)!
        print("""
            \(tasks[input - 1].title)
            \(tasks[input - 1].details)
            \(tasks[input - 1].dueDate)
        """)
    }
mainMenu()
}
func deleteTask() {
    print("what task would you like to delete?")
    for i in 0...tasks.count - 1 {
        if tasks[i].taskCompleted == false {
            print("\(i + 1) \(tasks[i].title)")
        };if tasks[i].taskCompleted == true {
            print("\(i + 1) \(tasks[i].title) is completed")
        }
    }
    let input = Int(readLine()!)!
    tasks.remove(at: input - 1)
    mainMenu()
    }
func viewCompletedTask() {
    print("what completed task would you like to view?")
    for i in 0...tasks.count - 1 {
        if tasks[i].taskCompleted == true {
            print("\(i + 1) \(tasks[i].title)")
}
    let input = Int(readLine()!)!
        print("""
            \(tasks[input - 1].title)
            \(tasks[input - 1].details)
            \(tasks[input - 1].dueDate)
            """)
    }
    mainMenu()}
func mainMenu() {
    print("""
***************************
* Welcome to Task Manager *
***************************

1. Create a task
2. View tasks
3. Delete a task
4. View Completed Task
5. Quit program
""")
    let input = Int(readLine()!)!
    if input == 1 {
        createTask()
    };if input == 2 {
        viewTask()
    };if input == 3 {
        deleteTask()
    };if input == 4 {
        viewCompletedTask()
    };if input == 5 {
        exit(0)
    }
}
mainMenu()




