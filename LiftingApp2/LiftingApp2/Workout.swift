//
//  Workout.swift
//  LiftingApp2
//
//  Created by Vincent on 5/18/15.
//  Copyright (c) 2015 Vincent. All rights reserved.
//

import UIKit

class Workout: NSObject {
    var Name:String = ""
    
    init(workOutName: String){
        Name = workOutName
    }
    
    override init(){
        Name = "Default Name"
    }
}
