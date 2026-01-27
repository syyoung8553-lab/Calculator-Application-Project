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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigureUI()
        makeVerticalStackView()
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
    
/*    private func makeHorizontalStackViewUI(){
        
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
   */
    
    
    private func makeHorizontalView(_ views: [UIView]) -> UIStackView {
        let stack = UIStackView(arrangedSubviews: views)
        stack.axis = .horizontal
        stack.spacing = 10
        stack.distribution = .fillEqually
    
        
        return stack
        
    }
    
    private func makeButton(title: String) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(
            red: 58/255, green: 58/255, blue: 58/255, alpha: 1
        )
        button.layer.cornerRadius = 40
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        return button
    }
    
    private func makeButtonCalculate(){
    }

    private func makeVerticalStackView(){
        
        let row1 = makeHorizontalView([
            makeButton(title: "7"),
            makeButton(title: "8"),
            makeButton(title: "9"),
            makeButton(title: "+"),
        ])
        
        let row2 = makeHorizontalView([
            makeButton(title: "4"),
            makeButton(title: "5"),
            makeButton(title: "6"),
            makeButton(title: "-"),
        
        ])
        
        let row3 = makeHorizontalView([
            makeButton(title: "1"),
            makeButton(title: "2"),
            makeButton(title: "3"),
            makeButton(title: "=")
        ])

        let row4 = makeHorizontalView([
            makeButton(title: "0"),
            makeButton(title: "."),
            makeButton(title: "C"),
            makeButton(title: "?")
        ])
        
        
        // 여기서 vertical 스택뷰 생성
        let verticalStackView = UIStackView(arrangedSubviews: [
            row1, row2, row3, row4
        ])
        
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 10
        verticalStackView.distribution = .fillEqually
        
        view.addSubview(verticalStackView)
        
        verticalStackView.snp.makeConstraints {
            $0.width.equalTo(350)
            $0.top.equalTo(label.snp.bottom).offset(60)
            $0.centerX.equalToSuperview()
        
        }
        
        [row1, row2, row3, row4].forEach { row in
              row.snp.makeConstraints { $0.height.equalTo(80) }
          }
        
    }
}

//lv3 구현




