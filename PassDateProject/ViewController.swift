//
//  ViewController.swift
//  PassDateProject
//
//  Created by Константин Алехин on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginAction(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindToMainViewController(segue: UIStoryboardSegue){
        guard segue.identifier == "unwindSegue" else { return }
        guard let sourceViewController = segue.source as? SecondViewController else { return }
        self.resultLabel.text = sourceViewController.label.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? SecondViewController else { return }
        viewController.login = loginTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

