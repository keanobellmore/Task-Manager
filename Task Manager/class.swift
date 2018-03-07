//
//  class.swift
//  Task Manager
//
//  Created by Keano Bellmore on 2/20/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import Foundation

class task {
    var title = String()
    var dueDate = Date()
    var details = String()
    var dueDateBool = true
    
    init(title: String, dueDate: Date, details: String, dueDateBool: Bool) {
        self.title = title
        self.dueDate = dueDate
        self.details = details
        self.dueDateBool = dueDateBool
    }
}
