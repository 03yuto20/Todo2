//
//  AddTodoViewController.swift
//  Todo2
//
//  Created by Yuto Nakamura on 2018/08/12.
//  Copyright © 2018年 Yuto Nakamura. All rights reserved.
//

import UIKit

class AddTodoViewController: UIViewController {

    
    //MARK: Outlets
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var bottomConstrint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow(with:)),
            name: .UIKeyboardWillShow,
            object: nil
        )
    }

    
    //MARK: Actions
    @objc func keyboardWillShow(with notification: Notification) {
        guard let keyboardFrame = notification.userInfo?[""] as? NSValue else {return}
        
        let keyboardHeight = keyboardFrame.cgRectValue.height
        
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    @IBAction func done(_ sender: Any) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
