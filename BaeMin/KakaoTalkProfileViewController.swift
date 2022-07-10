//
//  KakaoTalkProfileViewController.swift
//  BaeMin
//
//  Created by SC on 2022/07/10.
//

import UIKit

class KakaoTalkProfileViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var backgroundOverlayImageView: UIView!

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet var topRightButtonsCollection: [UIButton]!

    @IBOutlet weak var dividerView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()


        designBackground()

        dividerView.alpha = 0.5

        profileImageView.image = UIImage(named: "Sechon")
        profileImageView.layer.cornerRadius = 35

        usernameLabel.text = "Sani"
        usernameLabel.textColor = .white

        designButtons()


    }

    func designBackground() {
        backgroundImageView.image = UIImage(named: "ProfileBackground")
        backgroundImageView.contentMode = .scaleAspectFill
//        backgroundImageView.tintColor = .black

        // 배경화면 어둡게
        backgroundOverlayImageView.backgroundColor = .black
        backgroundOverlayImageView.alpha = 0.4
    }
    
    func designButtons() {
        closeButton.setTitle("", for: .normal)
        closeButton.tintColor = .white

        for button in topRightButtonsCollection {
//            button.buttonType = .custom  // get-only property 오류
            button.setTitle("", for: .normal)
//            button.imageView?.frame = CGRect(width: 20, height: 20)
            button.setPreferredSymbolConfiguration(.init(pointSize: 11), forImageIn: .normal)  // Button Attributes Inspector의 Preferred Symbol Configuration 부분
            button.tintColor = .white
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.white.cgColor
            button.layer.cornerRadius = button.frame.height / 2
        }

    }

}
