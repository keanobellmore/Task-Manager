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
        task0.taskCompleted = true
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
func viewCompletedTasks() {
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
func viewIncompletedTasks() {
    print("what completed task would you like to view?")
    for i in 0...tasks.count - 1 {
        if tasks[i].taskCompleted == false {
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
func markTaskComplete() {
    print("what task would you like to mark complete?")
    for i in 0...tasks.count - 1 {
        if tasks[i].taskCompleted == false {
            print("\(i + 1) \(tasks[i].title)")
        }
}
    let input = Int(readLine()!)!
    if input == tasks.count - 1 {
        tasks[input].taskCompleted = true }
mainMenu() }
func mainMenu() {
    print("""
***************************
* Welcome to Task Manager *
***************************

1. Create a Task
2. View Tasks
3. Delete a Task
4. Mark a Task Complete
5. View Incompleted Tasks
6. View Completed Tasks
7. Quit program

""")
    let input = Int(readLine()!)!
    if input == 1 {
        createTask()
    };if input == 2 {
        viewTask()
    };if input == 3 {
        deleteTask()
    };if input == 4 {
        markTaskComplete()
    };if input == 5 {
        viewIncompletedTasks()
    };if input == 6 {
        viewCompletedTasks()
    };if input == 7 {
        exit(0)
    }
}
mainMenu()




