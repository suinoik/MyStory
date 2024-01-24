//
//  ViewController.swift
//  MyStory
//
//  Created by Suino Ikhioda on 1/22/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func aboutme(_ sender: UITapGestureRecognizer) {
        let contextItem = ContextItem(paragraph: "I am Suino, a senior computer science major at howard university")
                performSegue(withIdentifier: "detailSegue", sender: contextItem)
    }
    
    
    @IBAction func earlylife(_ sender: UITapGestureRecognizer) {
        let contextItem = ContextItem(paragraph: "I was born and raised in Lagos Nigeria")
                performSegue(withIdentifier: "detailSegue", sender: contextItem)
    }
    
    @IBAction func coolpics(_ sender: UITapGestureRecognizer) {
        let contextItem = ContextItem(paragraph: "My hobbies are soccer, music, chess and drawing")
                performSegue(withIdentifier: "detailSegue", sender: contextItem)
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            if let destinationVC = segue.destination as? DetailViewController {
                if let contextItem = sender as? ContextItem {
                    destinationVC.contextItem = contextItem
                } else {
                    // Handle the case where sender is not a ContextItem
                    print("Error: Sender is not of type ContextItem")
                }
            } else {
                // Handle the case where the destination view controller is not of the expected type
                print("Error: Destination view controller is not of type YourDestinationViewController")
            }
        }
    }
    
    
    
}

