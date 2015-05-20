//
//  ViewController.swift
//  LiftingApp2
//
//  Created by Vincent on 5/17/15.
//  Copyright (c) 2015 Vincent. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let workouts = ["workout1", "workout2", "workout3"];
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.rowHeight = 80;
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
            let cell = sender as! WorkOutCellTableViewCell
            let addexercise = segue.destinationViewController
                as! AddExerciseViewController
            addexercise.WorkoutObj = cell.WorkoutObj!
        }
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workouts.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("customCell") as! UITableViewCell;
        
        if(indexPath.item % 2 == 0){
            cell.backgroundColor = UIColor.whiteColor();
            
        }
        else{
            cell.backgroundColor = UIColor.grayColor();
        }
        
        cell.textLabel!.text = WorkoutManager.GetWorkout(indexPath.item).Name
        return cell;
    }
}

