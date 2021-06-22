//
//  SecondViewController.swift
//  Task37-TikoJanikashvili
//
//  Created by Tiko on 21.06.21.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var checkbox: UIStackView!
    @IBOutlet weak var switchON: UISwitch!
    @IBOutlet weak var cancelButon: UIButton!
    @IBOutlet weak var imageVIew: UIImageView!
    @IBOutlet weak var pickLabel: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickColorLabel: UILabel!
    
    // MARK: - Life Cyrcle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayout()
        if UIDevice.current.orientation.isLandscape {
            print("Landscape")
        } else {
            print("Portrait")
        }
    }
    
    private func setupLayout() {
        self.continueButton.layer.cornerRadius = 10
        self.cancelButon.isHidden = true
        self.nextButton.isHidden = true
        self.switchON.isHidden = true
        self.label.isHidden = true
    }
    
    // MARK: - IBOutlets
    @IBAction func onContinue(_ sender: Any) {
        UIView.animate(withDuration: 1.5, animations: {
            self.imageVIew.transform = CGAffineTransform(rotationAngle: .pi/2)
            self.cancelButon.transform = CGAffineTransform(rotationAngle: .pi/2)
            self.label.transform = CGAffineTransform(rotationAngle: .pi/2)
            self.nextButton.transform = CGAffineTransform(rotationAngle: .pi/2)
            self.switchON.transform = CGAffineTransform(rotationAngle: .pi/2)
            
            self.checkbox.alpha = 0
            self.continueButton.alpha = 0
            self.label.alpha = 0
            self.pickLabel.alpha = 0
        }, completion: { [weak self] _ in
            UIView.animate(withDuration: 0.5, animations: {
                guard let self = self else { return }
                    self.checkbox.alpha = 0
                    self.continueButton.alpha = 0
                    self.label.alpha = 0
                    self.cancelButon.alpha = 0
                    self.label.alpha = 0
                    self.switchON.alpha = 0
                    self.nextButton.alpha = 0
                    self.cancelButon.isHidden = false
                    self.label.isHidden = false
                    self.switchON.isHidden = false
                    self.nextButton.isHidden = false
                    self.cancelButon.alpha = 1
                    self.label.alpha = 1
                    self.switchON.alpha = 1
                    self.nextButton.alpha = 1
                },completion: nil)
            })
    }
}
