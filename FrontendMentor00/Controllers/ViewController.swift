//
//  ViewController.swift
//  FrontendMentor00
//
//  Created by Jinwook Kim on 2021/05/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var headerImage: UIImageView!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var container: UIView!
    @IBOutlet var subheaderLabel: UILabel!
    @IBOutlet var firstItemLabel: UILabel!
    @IBOutlet var secondItemLabel: UILabel!
    @IBOutlet var thirdItemLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialize()
    }
}

// MARK: - Initializations

extension ViewController {
    func initialize() {
        self.initializeScrollView()
        self.initializeContainer()
        self.initializeSubheaderLabel()
        self.initializeItemLabel()
    }
    func initializeScrollView() {
        self.scrollView.contentInsetAdjustmentBehavior = .never
    }
    func initializeContainer() {
        self.container.layer.cornerRadius = 10.0
        self.container.layer.shadowColor = UIColor(named: K.Colors.shadowColorName)!.cgColor
        self.container.layer.shadowOffset = CGSize(width: 10.0, height: 10.0)
        self.container.layer.shadowRadius = 10.0
        self.container.layer.shadowOpacity = 0.5
        self.container.clipsToBounds = true
    }
    func initializeSubheaderLabel() {
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: self.subheaderLabel.text!)
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 8
        paragraphStyle.alignment = .center
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedString.length))
        self.subheaderLabel.attributedText = attributedString
    }
    func initializeItemLabel() {
        let strings: [String] = [self.firstItemLabel.text!, self.secondItemLabel.text!, self.thirdItemLabel.text!]
        let attributedStrings: [NSMutableAttributedString] = strings.map{self.adjustLetterSpacing(for: $0, with: 3.0)}
        self.firstItemLabel.attributedText = attributedStrings[0]
        self.secondItemLabel.attributedText = attributedStrings[1]
        self.thirdItemLabel.attributedText = attributedStrings[2]
    }
    func adjustLetterSpacing(for string: String, with letterSpacing: Double) -> NSMutableAttributedString {
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: string)
        attributedString.addAttribute(NSAttributedString.Key.kern, value: letterSpacing, range: NSMakeRange(0, attributedString.length))
        return attributedString
    }
}
