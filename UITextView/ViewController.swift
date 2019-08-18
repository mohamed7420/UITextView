//
//  ViewController.swift
//  UITextView
//
//  Created by Mohamed on 8/18/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextViewDelegate{

    @IBOutlet weak var labelCount: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.delegate = self
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        super.touchesBegan(touches, with: event)

        self.view.endEditing(true)
        
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
        
        textView.backgroundColor = UIColor.lightGray
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        
        textView.backgroundColor = UIColor.white
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        labelCount.text = "\(textView.text.count)"
        
       
        return true
        
    }
//    
//    func UpdateTextView(notification : Notification) {
//        
//        let userinfo = notification.userInfo
//        
//        let KeyboardEndFrameFromScreenCoordinates = (userinfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
//        
//        let keyboardEndFrame = self.view.convert(
//        
//        
//        
//    }
    




}
