//
//  MemoryDetailViewController.swift
//  Memories
//
//  Created by Yvette Zhukovsky on 10/16/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class MemoryDetailViewController: UIViewController {
    
    var memory: Memory?
    var memoryController: MemoryController
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func updateViews(memory:Memory?){
        if memory == nil {
            self.title = "Add Memory"
        } else {
            guard let unwrMemory = memory else {return}
            self.title = "Edit Memory"
            
            imageView.image = UIImage(data: unwrMemory.imageData)
            textField.text = unwrMemory.title
            textView.text = unwrMemory.bodyText
            
        }
    }
    




@IBOutlet weak var imageView: UIImageView!


@IBOutlet weak var textField: UITextField!



@IBOutlet weak var textView: UITextView!


@IBAction func addPhoto(_ sender: Any) {
}


@IBAction func save(_ sender: Any) {
}

}

