//
//  WorkoutManager.swift
//  LiftingApp2
//
//  Created by Vincent on 5/18/15.
//  Copyright (c) 2015 Vincent. All rights reserved.
//

import UIKit

class WorkoutManager: NSObject {
   static var workouts = [Workout]()
    
    class func AddWorkout(name: String){
        var workout = Workout(workOutName: name)
        workouts.append(workout)
    }
    
    class func DeleteWorkout(id: Int){
        workouts.removeAtIndex(id);
    }
    
    class func GetWorkout(id: Int) -> Workout{
        if(workouts.count > 0){
            return workouts[id]
        }
        
        return Workout()
    }
}
