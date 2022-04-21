//
//  SecondViewController.swift
//  PassDateProject
//
//  Created by Константин Алехин on 21.04.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login: String?
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = login else {
            return
        }
        
        label.text = "Hello, \(login)"
    }
    
    @IBAction func goBackAction(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
}
