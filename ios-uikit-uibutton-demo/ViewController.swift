//
//  ViewController.swift
//  ios-uikit-uibutton-demo
//
//  Created by k_motoyama on 2017/02/27.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var hiraginoButton: UIButton!
    
    // MARK: - life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTitle()
        setupTitleColor()
        getCurrentTitle()
        setupImage()
        
        setupVerticalAlignment()
    }
}

// MARK: - file private
private extension ViewController {
    
    // 現在表示されているタイトルを取得する
    func getCurrentTitle(){
        print(button.currentTitle!)
    }
    
    // ボタンのタイトルを設定する
    func setupTitle(){
        button.setTitle("ボタン2", for: .normal)
    }
    
    // ボタンのタイトルの色を設定する
    func setupTitleColor(){
        button.setTitleColor(UIColor.red, for: .normal)
    }
    
    // ボタンのタイトルの影を設定する
    func setupTitleShadowColor(){
        button.setTitleShadowColor(UIColor.gray, for: .normal)
        button.titleLabel!.shadowOffset = CGSize(width: 3, height: 3)
    }
    
    // ボタンに表示する画像を設定する
    func setupImage(){
        let image = UIImage(named:"apple.png")
        button.setImage(image, for: .normal)
        button.sizeToFit()
        button.center = self.view.center
    }

    /// コンテンツの垂直方向の配置を設定する
    func setupVerticalAlignment() {
        // ヒラギノ角ゴシックで「g」「j」などの下部が切れないように.fillを設定する
        // この設定に加えて、Buttonのheightが十分にあれば「g」「j」などの下部は切れない
        hiraginoButton.contentVerticalAlignment = .fill
    }
}
