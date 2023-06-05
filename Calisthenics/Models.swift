//
//  Models.swift
//  Calisthenics
//
//  Created by Jared Jones on 6/5/23.
//

import CoreData
import Foundation

let mainMuscleOptions = ["Abs", "Back", "Biceps", "Chest", "Glutes", "Hamstrings", "Quadriceps", "Shoulders", "Triceps", "Lower Back"]
let accessoryMuscleOptions = ["Calves", "Trapezius", "Abductors", "Adductors", "Forearms", "Neck"]
let unitOptions = ["Reps", "Duration"]

enum Difficulty: String, CaseIterable {
    case easy, medium, hard
}

enum Units: String, CaseIterable {
    case reps, duration
}

// dummy Exercise
extension Exercise {
    static func preview() -> Exercise {
        // Create a dummy managed object model
        let model = NSManagedObjectModel()
        let entity = NSEntityDescription()
        entity.name = "Exercise"
        model.entities = [entity]

        // Create a dummy persistent store coordinator
        let coordinator = NSPersistentStoreCoordinator(managedObjectModel: model)

        // Create a dummy managed object context
        let context = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        context.persistentStoreCoordinator = coordinator

        // Create a dummy Exercise
        let exercise = Exercise(context: context)
        exercise.title = "Squats"
        exercise.id = UUID()
        exercise.isActive = true
        exercise.currentReps = 22
        exercise.notes = "some notes"
        exercise.units = "reps"
        
        exercise.muscles = ["chest"]
        
        exercise.logs = [Log.preview()]

        return exercise
    }
}

extension Log {
    static func preview() -> Log {
        // Create a dummy managed object model
        let model = NSManagedObjectModel()
        let entity = NSEntityDescription()
        entity.name = "Log"
        model.entities = [entity]

        // Create a dummy persistent store coordinator
        let coordinator = NSPersistentStoreCoordinator(managedObjectModel: model)

        // Create a dummy managed object context
        let context = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        context.persistentStoreCoordinator = coordinator

        // Create a dummy Exercise
        let log = Log(context: context)
        log.id = UUID()
        log.duration = 5
        log.reps = 31

        return log
    }
}
