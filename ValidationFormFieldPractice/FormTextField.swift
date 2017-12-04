//
//  FormTextField.swift
//  ValidationFormFieldPractice
//
//  Created by Keisei Saito on 2017/12/04.
//  Copyright © 2017 Keisei Saito. All rights reserved.
//

import UIKit

class FormTextField: UITextField {
    private var validatorLayer: CALayer!

    var isValid = true {
        didSet {
            validatorLayer.isHidden = isValid
            validatorLayer.frame = CGRect(x: 0, y: self.frame.height - 2, width: self.frame.width, height: 2)
            textColor = isValid ? .black : .red
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        didInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        didInit()
    }

    private func didInit() {
        // バリデーション用の下線
        validatorLayer = CALayer()
        validatorLayer.backgroundColor = UIColor.red.cgColor
        validatorLayer.isHidden = true
        layer.addSublayer(validatorLayer)
    }

}
