//
//  CreateWorkoutViewController.swift
//  LiftingApp2
//
//  Created by Vincent on 5/19/15.
//  Copyright (c) 2015 Vincent. All rights reserved.
//

import UIKit

class CreateWorkoutViewController: UIViewController {

    @IBOutlet var nameInputField: UITextField!
    @IBOutlet var activityIndicatorIcon: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        nameInputField.enabled = true
        nameInputField.becomeFirstResponder()
    }

    @IBAction func nameFieldEntered(sender: AnyObject) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButton_click(sender: AnyObject) {
        activityIndicatorIcon!.startAnimating()
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(1 * Double (NSEC_PER_SEC)))
        dispatch_after(time,dispatch_get_main_queue()){
            self.activityIndicatorIcon.stopAnimating()
        }
        WorkoutManager.AddWorkout(nameInputField.text)
        nameInputField.text = ""
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
