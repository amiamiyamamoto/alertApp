//
//  ViewController.swift
//  AlertApp
//
//  Created by s247 on 2018/01/02.
//  Copyright © 2018年 ami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //ラベルプロパティ
    @IBOutlet weak var label: UILabel!
    
    //ラベルの表示を書き換えるメソッド
    private func redisplayLabel(text:String) {
        label.text = text
    }
    //Buttonが押されたときの処理
    @IBAction func tapButton(_ sender: Any) {
        //アラートダイアログを生成する
        let alert = UIAlertController(title:"タイトル", message:"メッセージ", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        //アクション1Buttonを作成
        let action1 = UIAlertAction(title:"アクション1", style: UIAlertActionStyle.default) { (action:UIAlertAction) in
            self.redisplayLabel(text: "アクション1が押された")
        }
        //アクション2Buttonを作成
        let action2 = UIAlertAction(title:"アクション2", style: UIAlertActionStyle.default) { (action:UIAlertAction) in
            self.redisplayLabel(text: "アクション2が押された")
        }

        //アクション3Buttonを作成
        let action3 = UIAlertAction(title:"アクション3", style: UIAlertActionStyle.destructive) { (action:UIAlertAction) in
            self.redisplayLabel(text: "アクション3が押された")
        }

        //キャンセルボタンを作成
        let cancel = UIAlertAction(title:"キャンセル", style:UIAlertActionStyle.cancel){ (action:UIAlertAction) in
            self.redisplayLabel(text: "キャンセルが押された")
        }
        
        //各ボタンをアラートダイアログに追加
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        alert.addAction(cancel)
        //アラートを表示させる
        present(alert, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

