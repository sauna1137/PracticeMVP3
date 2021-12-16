//
//  Alert.swift
//  PracticeMVP3
//
//  Created by KS on 2021/12/16.
//

import Foundation
import UIKit

class AlertModel {

    // テキストフィールドの値が間違えていた時
    func inputedTextFieldError() -> UIAlertController {
        let alert = UIAlertController(title: "入力された値が間違っています", message: "数字を入力してください", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        return alert
    }
}
