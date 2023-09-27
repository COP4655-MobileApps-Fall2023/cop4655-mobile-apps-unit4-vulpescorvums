//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Plant Seedlings for Fall season.",
                 description: "Plant tomatoes, peppers, and borage"),
            Task(title: "Go to the grocery store.",
                 description: "Pick up chicken, tomato sauce, and pasta."),
            Task(title: "Complete school work.",
                 description: "Finish project by tonight.")
        ]
    }
}
