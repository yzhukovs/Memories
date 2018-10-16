//
//  OnboardingViewController.swift
//  Memories
//
//  Created by Yvette Zhukovsky on 10/16/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        localNotificationHelper.getAuthorizationStatus(completion: {
            if .authorized {
                self.performSegue(withIdentifier:"addMemory", sender: nil)
            }
        })
        
    // Do any additional setup after loading the view.
}


let localNotificationHelper = LocalNotificationHelper()


@IBAction func getStarted(_ sender: Any) {
    localNotificationHelper.requestAuthorization(completion: {
        if $0 {
            self.localNotificationHelper.scheduleDailyReminderNotification()
        }
    })
    performSegue(withIdentifier:"addMemory", sender: nil)
}

}
