//
//  ViewController.swift
//  Calculator App
//
//  Created by ios on 1/26/26.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigureUI()
        
    }

//LV1 구현 시작
    private func ConfigureUI(){
        view.backgroundColor = .black
        label.text = "12345"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 60, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        
        
        view.addSubview(label)
        
        label.snp.makeConstraints{
          
            $0.height.equalTo(100)
            $0.trailing.equalToSuperview().offset(-30)
            $0.top.equalToSuperview().offset(200)
            $0.centerX.equalToSuperview()
        }
    }
//LV1 구현 마무리
}

