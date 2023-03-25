//
//  MainViewController.swift
//  XcodeGenDemo
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Instance Properties

    @IBOutlet private weak var emojiLabel: UILabel!
    @IBOutlet private weak var messageLabel: UILabel!

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    // MARK: - Instance Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        if Configuration.isXcodeGenIntegrated {
            emojiLabel.text = "🥳"
            messageLabel.text = "Ура,\nXcodeGen интегрирован!"
        } else {
            emojiLabel.text = "🤒"
            messageLabel.text = "Плохо,\nXcodeGen не интегрирован!"
        }
    }
}
