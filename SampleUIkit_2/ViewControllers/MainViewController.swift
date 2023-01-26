//
//  ViewController.swift
//  SampleUIkit_2
//
//  Created by 길지훈 on 2023/01/26.
//

import UIKit
import Lottie

class MainViewController: UIViewController {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "메인화면"
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    let animationView: LottieAnimationView = {
       
        let animView = LottieAnimationView(name: "134809-bright-bubbles")
        animView.frame = CGRect(x:0,y:0,width: 400, height: 400)
        
        animView.contentMode = .scaleAspectFill
        return animView
    }()
    
    
    
    override func viewDidLoad() { //뷰가 생성되었을때
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        animationView.loopMode = .repeatBackwards(1)
    
       
        // 애니메이션 실행
        animationView.play { (finish) in
            //
            print("애니메이션 끝났다.")
            
            self.view.backgroundColor = .white
            
            self.animationView.removeFromSuperview() // ani뷰의 상위 뷰인 view에서 ani뷰를 없애버린다! 끝났으니께.
            
            self.view.addSubview(self.titleLabel) // 그리고 서브뷰를 추가!
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
            
            
        }
        
    }


}

