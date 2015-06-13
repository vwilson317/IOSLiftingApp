//
//  ViewController.swift
//  LiftingApp2
//
//  Created by Vincent on 5/17/15.
//  Copyright (c) 2015 Vincent. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.rowHeight = 80;
        self.tableView.registerNib(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "messageCell")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
        navigationController?.navigationBar.alpha = 0.5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        if(segue.identifier == "addexerciseview"){
            let cell = sender as! WorkOutTableViewCell
            let addexercise = segue.destinationViewController
                as! AddExerciseViewController
            addexercise.WorkoutObj = cell.WorkoutObj!
        }
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return WorkoutManager.workouts.count;
    }
    
    override func tableView(tableView: (UITableView), cellForRowAtIndexPath
        indexPath: (NSIndexPath)) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("workoutcell")
            as! UITableViewCell
        
        var anotherCell = cell as! WorkOutTableViewCell
            
        if(indexPath.item % 2 == 0){
            anotherCell.backgroundColor = UIColor.whiteColor();
        }
        else{
            anotherCell.backgroundColor = UIColor.grayColor();
        }
        let workout = WorkoutManager.GetWorkout(indexPath.item)
        anotherCell.textLabel!.text = workout.Name
        anotherCell.WorkoutObj = workout
        return cell;
    }
}

