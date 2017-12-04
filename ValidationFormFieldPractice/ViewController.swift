//
//  ViewController.swift
//  ValidationFormFieldPractice
//
//  Created by Keisei Saito on 2017/12/04.
//  Copyright © 2017 Keisei Saito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: FormTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.addTarget(self, action: #selector(handleTextField(_:)), for: .editingChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func handleTextField(_ textField: FormTextField) {
        // バリデーション例として20文字以内であるかチェック
        guard let text = textField.text else { return }
        textField.isValid = text.characters.count < 20
    }

}

