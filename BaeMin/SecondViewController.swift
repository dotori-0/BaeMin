//
//  SecondViewController.swift
//  BaeMin
//
//  Created by SC on 2022/07/05.
//

import UIKit

class SecondViewController: UIViewController {

    // 아웃렛 변수
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var button: UIButton!

    // 뷰컨트롤러 생명주기 종류 중 하나
    // 사용자에게 화면이 보이기 직전에 실행되는 코드
    override func viewDidLoad() {
        super.viewDidLoad()


        bannerImageView.image = UIImage(named: "banner0\(Int.random(in: 1...3))")
        bannerImageView.layer.cornerRadius = 10
        bannerImageView.layer.borderWidth = 5
        bannerImageView.layer.borderColor = UIColor.blue.cgColor

        titleLabel.text = "택시운전사"
//        movieTitleLabel.backgroundColor = UIColor.yellow
        titleLabel.backgroundColor = .yellow
        titleLabel.textColor = .red
//        movieTitleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        titleLabel.font = .boldSystemFont(ofSize: 30)

        // 점을 찍으면 그 안에 들어있는 요소들을 전부 볼 수 있다


        button.setTitleColor(.red, for: .highlighted)
        button.setTitleColor(.yellow, for: .selected)
    }


    @IBAction func resultButtonClicked(_ sender: UIButton) {
        bannerImageView.image = UIImage(named: "banner0\(Int.random(in: 1...3))")
    }
}
