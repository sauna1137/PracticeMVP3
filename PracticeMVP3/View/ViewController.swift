//
//  ViewController.swift
//  PracticeMVP3
//
//  Created by KS on 2021/12/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    var presenter = Presenter()

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.delegate = self
    }

    @IBAction func calcButtonDidTap(_ sender: Any) {

        guard let num1 = Int(textField1.text!), let num2 = Int(textField2.text!) else {
            presenter.textFieldInputError()
            return
        }
        presenter.calcButtonDidTap(num1: num1, num2: num2)
    }
}

extension ViewController: PresenterDelegate {
    func calcurated(result: Int) {
        resultLabel.text = String(result)
    }

    func passAlertController(alert: UIAlertController) {
        present(alert, animated: true, completion: nil)
    }
}


