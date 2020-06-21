//
//  NoteViewController.swift
//  groupRevolution_FinalProject
//
//  Created by Navi Malhotra on 2020-06-21.
//  Copyright © 2020 Naveen Kumar. All rights reserved.
//


// THIS IS WHERE WE ACTUALLY SEE A NOTE

import UIKit

class NoteViewController: UIViewController {

       @IBOutlet var titleLabel: UILabel!
     @IBOutlet var noteLabel: UITextView!

     public var noteTitle: String = ""
     public var note: String = ""

     override func viewDidLoad() {
         super.viewDidLoad()
         titleLabel.text = noteTitle
         noteLabel.text = note
     }

}
