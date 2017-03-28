//
//  ViewController.swift
//  SampleResearchKit
//
//  Created by Surabhi Chopada on 16/03/17.
//  Copyright © 2017 Surabhi Chopada. All rights reserved.
//

import UIKit
import ResearchKit
class ViewController: UIViewController,ORKTaskViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func consentClicked(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
    }
    
    @IBAction func surveyClicked(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: SurveyTask, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
    }
    
    @IBAction func activeTaskClicked(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: ActiveTask, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
    }
    
    func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
        //You can handle the results with taskViewController.result
        taskViewController.dismiss(animated: true, completion: nil)
    }

}

