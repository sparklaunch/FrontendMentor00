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
}
