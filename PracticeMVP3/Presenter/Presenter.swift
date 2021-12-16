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
    var alertModle = AlertModel()

    func calcButtonDidTap(num1: Int, num2: Int){
        let result = calcModel.calculateNums(num1: num1, num2: num2)
        delegate?.calcurated(result: result)
    }

    func textFieldInputError() {
        let alert = alertModle.inputedTextFieldError()
        delegate?.passAlertController(alert: alert)
    }

}
