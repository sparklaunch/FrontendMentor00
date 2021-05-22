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
}
