//
//  ViewController.swift
//  VKontakte
//
//  Created by Elena Kostenko on 04/04/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView?
    
    @IBOutlet weak var usernameTexfield: UITextField!
    @IBOutlet weak var passwordTexfield: UITextField!
    
    @IBAction func buttonPressed(_ sender: Any) { }
    
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
        
    
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        
        scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }

    private func checkUserInfo() -> Bool{
        guard
            let username = usernameTexfield.text,
            let password = passwordTexfield.text,
                username == "admin",
                password == "12345"
        else {
            presentError()
            return false
        }
            return true
       
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        checkUserInfo()
    }
    
    private func presentError(with messeg: String = "Неправильный логин или пароль"){
        let alertController = UIAlertController(title: "Ошибка", message: messeg, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ок", style: .default)
        
        alertController.addAction(okButton)
        present(alertController, animated: true)
        
    }
    
    @objc func hideKeyboard() {
        self.scrollView?.endEditing(true)
        
    }

    @objc func keyboardWasShown(nofitication: Notification) {
        
        let info = nofitication.userInfo! as NSDictionary
        
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        
        let contentInsets = UIEdgeInsets (top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        
        self.scrollView?.contentInset = contentInsets
        
        scrollView?.scrollIndicatorInsets = contentInsets
        
    }
    
    
    @objc func keyboardWillBeHidden(notification: Notification){
        
        let contentInsets = UIEdgeInsets.zero
        
        scrollView?.contentInset = contentInsets
    }
    
    
    @IBAction func EnterButtonPressed(_ sender: UIButton) {
        
        if  usernameTexfield.text == "admin",
            passwordTexfield.text == "12345" {
            print("Auth success")
                
            } else {
                print("Auth failed")
            }
    }
    
}

