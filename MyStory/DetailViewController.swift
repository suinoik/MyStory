//
//  DetailViewController.swift
//  MyStory
//
//  Created by Suino Ikhioda on 1/22/24.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var paragraph: UILabel!
    
    var contextItem: ContextItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let item = contextItem {
                    paragraph.text = item.paragraph
                }
      // paragraph.text = ContextItem.paragraph

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
