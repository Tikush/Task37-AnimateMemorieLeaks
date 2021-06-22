//
//  ThirdViewController.swift
//  Task37-TikoJanikashvili
//
//  Created by Tiko on 21.06.21.
//

import UIKit

class ThirdViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var topAncher: NSLayoutConstraint!
    @IBOutlet weak var widthAncher: NSLayoutConstraint!
    
    // MARK: - Life Cyrcle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayout()
        self.configurePanGesture()
    }
    
    private func setupLayout() {
        self.textLabel.isHidden = true
        self.textLabel.alpha = 0.5
        self.imageView.layer.cornerRadius = 10
        self.view.backgroundColor = .lightGray
    }
    
    private func configurePanGesture() {
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(handlerPan(_:)))
        self.imageView.isUserInteractionEnabled = true
        self.imageView.addGestureRecognizer(gesture)
    }
    
   
    
    //    self.imageView.frame = CGRect(origin: CGPoint(x: 10, y: 100), size: CGSize(width: self.view.frame.width, height: self.imageView.frame.height))
    
    @objc func handlerPan(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: self.view)
        switch gesture.state {
        case .began:
            print("began")
        case .changed:
            if translation.y < 0 {
                self.topAncher.constant = 0
                self.imageView.layer.cornerRadius = 0
                self.widthAncher.constant = self.view.frame.width
                self.textLabel.isHidden = false
                self.textLabel.alpha = 1
                
            } else {
                self.imageView.layer.cornerRadius = 0
                self.topAncher.constant = translation.y
            }
            
            UIView.animate(withDuration: 5, animations: {
                self.imageView.layoutIfNeeded()
            })
            
        case .ended:
            self.topAncher.constant = 104
            self.widthAncher.constant = 300
            self.textLabel.isHidden = true
            self.textLabel.alpha = 1
            self.imageView.layer.cornerRadius = 10
            self.imageView.layer.masksToBounds = true
            
            UIView.animate(withDuration: 0.3) {
                self.imageView.layoutIfNeeded()
            }
        default:
            break
        }
    }
}
