//
//  ViewController.swift
//  Calculator App
//
//  Created by ios on 1/26/26.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    
    private var mainnumber : Int = 0
    let label = UILabel()
    let stackview = UIStackView()
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigureUI()
        makeHorizontalStackViewUI()
    }

//LV1 구현 시작
    private func ConfigureUI(){
        view.backgroundColor = .black
        label.text = "\(self.mainnumber)"  // LV1에서는 "12345"
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
    
    private func makeHorizontalStackViewUI(){
        
        button1.setTitle("7", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button1.titleLabel?.font = .boldSystemFont(ofSize: 30)


        button2.setTitle("8", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button2.titleLabel?.font = .boldSystemFont(ofSize: 30)
        
        button3.setTitle("9", for: .normal)
        button3.setTitleColor(.white, for: .normal)
        button3.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button3.titleLabel?.font = .boldSystemFont(ofSize: 30)
       
        button4.setTitle("+", for: .normal)
        button4.setTitleColor(.white, for: .normal)
        button4.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button4.titleLabel?.font = .boldSystemFont(ofSize: 30)
        
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .horizontal
        stackview.addArrangedSubview(button1)
        stackview.addArrangedSubview(button2)
        stackview.addArrangedSubview(button3)
        stackview.addArrangedSubview(button4)
        stackview.spacing = 10
        stackview.distribution = .fillEqually
        
        view.addSubview(stackview)
        
        stackview.snp.makeConstraints {
            $0.top.equalTo(label.snp.bottom).offset(-5)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.height.equalTo(80)
            }
        
   //LV2 구현 마무리

        
        
      
    }
    
    
}


