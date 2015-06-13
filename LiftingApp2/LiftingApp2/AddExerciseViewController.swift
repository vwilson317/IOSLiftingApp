//
//  AddExerciseViewController.swift
//  LiftingApp2
//
//  Created by Vincent on 5/19/15.
//  Copyright (c) 2015 Vincent. All rights reserved.
//

import UIKit

class AddExerciseViewController: UIViewController {
    var WorkoutObj:Workout?
    @IBOutlet var ViewTitleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(animated: Bool) {
        ViewTitleLabel.text = WorkoutObj!.Name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
