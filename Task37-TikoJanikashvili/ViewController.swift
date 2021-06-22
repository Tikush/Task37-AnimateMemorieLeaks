//
//  ViewController.swift
//  Task37-TikoJanikashvili
//
//  Created by Tiko on 21.06.21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: - IBActions
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onFirst(_ sender: Any) {
        UIView.animate(withDuration: 3.0, animations: {
            self.imageView.alpha = 0
        }, completion: { [weak self] _ in
                UIView.animate(withDuration: 1.0, animations:{
                    self?.imageView.alpha = 0.7
                }, completion: nil)
            })
        
        UIView.animate(withDuration: 3.0, animations: {
            self.imageView.frame.size.width += -60
            self.imageView.frame.size.height += -35
        }){ [weak self] _ in
            UIView.animate(withDuration: 3.0, animations: {
                self?.imageView.frame.size.width -= 0
                self?.imageView.frame.size.height -= 0
            })
        }
    }
    
    @IBAction func onSecond(_ sender: Any) {
        let sb = UIStoryboard(name: "SecondViewController", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "SecondViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onThird(_ sender: Any) {
        let sb = UIStoryboard(name: "ThirdViewController", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "ThirdViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onFour(_ sender: Any) {
        let sb = UIStoryboard(name: "FourViewController", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "FourViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
