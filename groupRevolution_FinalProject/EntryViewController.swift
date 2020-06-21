//
//  EntryViewController.swift
//  groupRevolution_FinalProject
//
//  Created by Navi Malhotra on 2020-06-21.
//  Copyright © 2020 Naveen Kumar. All rights reserved.
//

// THIS IS WHERE WE CREATE A NEW NOTE

import UIKit

class EntryViewController: UIViewController {

      @IBOutlet var titleField: UITextField!
      @IBOutlet var noteField: UITextView!

      public var completion: ((String, String) -> Void)?

      override func viewDidLoad() {
          super.viewDidLoad()
          titleField.becomeFirstResponder()
          navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))
      }

      @objc func didTapSave() {
          if let text = titleField.text, !text.isEmpty, !noteField.text.isEmpty {
              completion?(text, noteField.text)
          }
      }

}
