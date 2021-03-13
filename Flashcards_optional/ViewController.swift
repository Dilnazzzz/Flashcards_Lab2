//
//  ViewController.swift
//  Flashcards_optional
//
//  Created by Dilnaz on 2/20/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backLabel: UILabel!
    
    @IBOutlet weak var frontLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

   
    @IBAction func tap(_ sender: Any) {
        if frontLabel.isHidden {frontLabel.isHidden=false}
        else {frontLabel.isHidden=true}
        
    }
    
    
    func updateFlashcard(Question: String, Answer: String) {
        frontLabel.text = Question
        backLabel.text = Answer
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as!CreationViewController
        
        creationController.flashcardsController = self
    }
    
}

