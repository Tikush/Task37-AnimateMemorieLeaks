//
//  FourViewController.swift
//  Task37-TikoJanikashvili
//
//  Created by Tiko on 21.06.21.
//

import UIKit

class FourViewController: UIViewController {
    
    // MARK:  - IBOutlets
    @IBOutlet weak var animatedView: UIView!
    @IBOutlet weak var animateButton: UIButton!
    
    // MARK: - Private Properties
    let start: CGPoint = CGPoint(x: UIScreen.main.bounds.size.width * 0.5, y: UIScreen.main.bounds.size.height * 0.5)
    
    // MARK: - Life Cyrcle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.animateButton.layer.cornerRadius = 10
        self.animatedView.layer.cornerRadius = 10
    }
    
    @IBAction func animte(_ sender: Any) {
        let animator = UIViewPropertyAnimator(duration:0.3, curve: .linear) {
            self.animatedView.center = self.view.center
        }
        animator.startAnimation()
        
        UIView.animateKeyframes(withDuration: 3,
                                delay: 0,
                                options: .calculationModeLinear,
                                animations: {
                                    UIView.addKeyframe(
                                        withRelativeStartTime: 0.25,
                                        relativeDuration: 0.25) {
                                        self.animatedView.center = CGPoint(x: self.view.bounds.midX, y: self.view.bounds.maxY) //8
                                    }
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) { [self] in
                                        self.animatedView.center = CGPoint(x: self.view.bounds.width, y: start.y)
                                    }
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) { [self] in
                                        self.animatedView.center = start
                                    }
                                })
        
    }
}
