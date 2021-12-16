//
//  Presenter.swift
//  PracticeMVP3
//
//  Created by KS on 2021/12/16.
//

import Foundation
import UIKit

protocol PresenterDelegate {
    func calcurated(result: Int)
    func passAlertController(alert: UIAlertController)
}

class Presenter {

    var delegate: PresenterDelegate?
    var calcModel = CalcModel()

    func calcButtonDidTap(num1: Int, num2: Int){
        let result = calcModel.calculateNums(num1: num1, num2: num2)
        delegate?.calcurated(result: result)
    }

    enum alertType {
        case noValue
        case noInt
    }

    func textFieldInputError(alertType: alertType) {

        let alert: UIAlertController

        switch alertType {
        case .noValue: alert = inputedTextFieldError(message: "値が入力されていません")
        case .noInt: alert = inputedTextFieldError(message: "数値以外の値が入力されています。")
        }

        delegate?.passAlertController(alert: alert)
    }

    func inputedTextFieldError(message: String) -> UIAlertController {
        let alert = UIAlertController(title: message, message: "数字を入力してください", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        return alert
    }

}
